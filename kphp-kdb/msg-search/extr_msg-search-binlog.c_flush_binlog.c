
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SEEK_SET ;
 int assert (int) ;
 int binlog_fd ;
 int binlogname ;
 int fprintf (int ,char*,int,...) ;
 scalar_t__ log_endw ;
 scalar_t__ log_pos ;
 scalar_t__ log_rptr ;
 scalar_t__ log_start ;
 scalar_t__ log_wptr ;
 scalar_t__ lseek (int ,scalar_t__,int ) ;
 int now ;
 int stderr ;
 scalar_t__ verbosity ;
 int write (int ,scalar_t__,int) ;

void flush_binlog (void) {
  int w, s;
  if (!binlogname || log_rptr == log_wptr) {
    return;
  }
  if (verbosity > 0) {
    fprintf (stderr, "%d flush_binlog()\n", now);
  }
  if (log_endw) {
    assert (log_wptr < log_rptr && log_rptr <= log_endw);
    s = log_endw - log_rptr;
    if (s > 0) {
      assert (lseek (binlog_fd,log_pos, SEEK_SET) == log_pos);
      w = write (binlog_fd, log_rptr, s);
      if (w < 0) {
 fprintf (stderr, "error writing %d bytes at %lld to %s: %m\n", s, (long long) log_pos, binlogname);
 return;
      }
      log_rptr += w;
      log_pos += w;
      if (w < s) {
 return;
      }
    }
    log_rptr = log_start;
    log_endw = 0;
  }
  assert (log_rptr <= log_wptr);
  s = log_wptr - log_rptr;
  if (s > 0) {
    assert (lseek (binlog_fd, log_pos, SEEK_SET) == log_pos);
    w = write (binlog_fd, log_rptr, s);
    if (w < 0) {
      fprintf (stderr, "error writing %d bytes at %lld to %s: %m\n", s, (long long) log_pos, binlogname);
      return;
    }
    log_rptr += w;
    log_pos += w;
  }
}
