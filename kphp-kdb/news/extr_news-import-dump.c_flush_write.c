
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 int stderr ;
 char* strerror (int ) ;
 scalar_t__ verbosity ;
 scalar_t__* wptr ;
 int write (int ,scalar_t__,scalar_t__) ;
 scalar_t__* write_buff ;
 int * write_fd ;

void flush_write (int x) {

  if (verbosity) {
    fprintf (stderr, "writing %ld bytes to file %d\n", (long)(wptr[x] - write_buff[x]), x);
  }
  if (wptr[x] != write_buff[x]) {
    int r = write (write_fd[x], write_buff[x], wptr[x] - write_buff[x]);
    if (r <= 0) {
      fprintf (stderr, "error_code %d (%s)\n", r, strerror (errno));
      exit (2);
    }
    if (r != wptr[x] - write_buff[x]) {
      fprintf (stderr, "written only part...\n");
      exit (2);
    }
  }
  wptr[x] = write_buff[x];
}
