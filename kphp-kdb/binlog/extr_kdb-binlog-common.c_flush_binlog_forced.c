
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ log_rptr; scalar_t__ log_wptr; scalar_t__ log_endw; scalar_t__ log_wcrypt_ptr; scalar_t__ log_start; } ;
struct TYPE_6__ {TYPE_1__* info; } ;
struct TYPE_5__ {int file_size; } ;


 TYPE_2__* Binlog ;
 int EAGAIN ;
 int EINTR ;
 int SEEK_SET ;
 TYPE_3__ W ;
 int assert (int) ;
 int binlog_cyclic_mode ;
 scalar_t__ binlog_disabled ;
 int binlog_fd ;
 int binlogname ;
 int errno ;
 int fprintf (int ,char*,int,...) ;
 int kfs_buffer_crypt (TYPE_2__*,int,int,scalar_t__) ;
 int kprintf (char*,int,long long,long long,int ) ;
 long long log_headers_size ;
 long long log_pos ;
 long long log_start_pos ;
 long long lseek (int ,long long,int ) ;
 int now ;
 int relax_write_log_crc32 () ;
 int stderr ;
 int sync_binlog (int) ;
 scalar_t__ verbosity ;
 int write (int ,scalar_t__,int) ;

void flush_binlog_forced (int force_sync) {
  int w, s, t;
  long long log_file_pos;
  if (!binlogname || binlog_disabled) {
    return;
  }
  if (W.log_rptr == W.log_wptr) {
    sync_binlog (force_sync * 2);
    return;
  }
  if (verbosity > 0) {
    fprintf (stderr, "%d flush_binlog()\n", now);
  }
  if (W.log_endw) {
    assert (W.log_wptr < W.log_rptr && W.log_rptr <= W.log_endw);
    s = W.log_endw - W.log_rptr;
    if (s > 0) {
      log_file_pos = log_pos - log_start_pos + log_headers_size;
      assert (lseek (binlog_fd, log_file_pos, SEEK_SET) == log_file_pos);
      if (W.log_rptr <= W.log_wcrypt_ptr && W.log_wcrypt_ptr < W.log_endw) {
        t = W.log_endw - W.log_wcrypt_ptr;
        relax_write_log_crc32 ();
        kfs_buffer_crypt (Binlog, W.log_wcrypt_ptr, t, log_file_pos + (W.log_wcrypt_ptr - W.log_rptr));
        W.log_wcrypt_ptr = W.log_start;
      }
      w = write (binlog_fd, W.log_rptr, s);
      if (w < 0) {
        fprintf (stderr, "error writing %d bytes at %lld (file position %lld) to %s: %m\n", s, log_pos, log_file_pos, binlogname);
        return;
      }
      W.log_rptr += w;
      if (Binlog && !binlog_cyclic_mode) {

        Binlog->info->file_size += w;
      }
      log_pos += w;
      if (w < s) {
        return;
      }
    }
    W.log_rptr = W.log_start;
    W.log_endw = 0;
  }
  assert (W.log_rptr <= W.log_wptr);
  s = W.log_wptr - W.log_rptr;
  if (s > 0) {
    log_file_pos = log_pos - log_start_pos + log_headers_size;
    assert (lseek (binlog_fd, log_file_pos, SEEK_SET) == log_file_pos);
    if (W.log_rptr <= W.log_wcrypt_ptr && W.log_wcrypt_ptr < W.log_wptr) {
      t = W.log_wptr - W.log_wcrypt_ptr;
      relax_write_log_crc32 ();
      kfs_buffer_crypt (Binlog, W.log_wcrypt_ptr, t, log_file_pos + (W.log_wcrypt_ptr - W.log_rptr));
      W.log_wcrypt_ptr = W.log_wptr;
    }
    w = write (binlog_fd, W.log_rptr, s);
    if (w < 0) {
      int binlog_write_errno = errno;
      kprintf ("error writing %d bytes at %lld (file position %lld) to %s: %m\n", s, log_pos, log_file_pos, binlogname);
      assert (binlog_write_errno == EINTR || binlog_write_errno == EAGAIN);
      return;
    }
    W.log_rptr += w;
    if (Binlog && !binlog_cyclic_mode) {

      Binlog->info->file_size += w;
    }
    log_pos += w;
  }
  sync_binlog (1 + force_sync);
}
