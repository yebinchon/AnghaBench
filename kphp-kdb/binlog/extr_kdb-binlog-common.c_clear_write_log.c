
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LogBuffer ;
 int LogSlaveBuffer ;
 int SLOG_BUFFER_SIZE ;
 int ULOG_BUFFER_SIZE ;
 int W ;
 int aio_write_start ;
 int assert (int) ;
 scalar_t__ binlog_disabled ;
 scalar_t__ binlog_write_active ;
 int clear_one_log (int *,int ,int ) ;
 int exit (int) ;
 int flush_binlog () ;
 int fprintf (int ,char*,...) ;
 int stderr ;
 int usleep (int) ;

void clear_write_log (void) {
  if (binlog_disabled) {
    clear_one_log (&W, LogSlaveBuffer, SLOG_BUFFER_SIZE);
  } else {

    int cnt = 0;
    while (binlog_write_active) {
      flush_binlog ();
      usleep (10000);
      if (++cnt > 300) {
        fprintf (stderr, "cannot write binlog for 3 seconds!");
        exit (3);
      }
    }
    if (cnt > 0) {
      fprintf (stderr, "clear_write_log: had to wait %d milliseconds for aio_write termination\n", cnt);
    }

    assert (!aio_write_start);

    clear_one_log (&W, LogBuffer, ULOG_BUFFER_SIZE);
  }
}
