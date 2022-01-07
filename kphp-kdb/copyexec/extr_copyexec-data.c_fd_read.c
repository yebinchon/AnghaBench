
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EINTR ;
 int copyexec_abort () ;
 scalar_t__ errno ;
 int kprintf (char*,long long,long long) ;
 long long read (int,void*,long long) ;

__attribute__((used)) static int fd_read (int fd, void *a, long long size) {
  long long bytes_read;
  do {
    bytes_read = read (fd, a, size);
  } while (bytes_read < 0 && errno == EINTR);
  if (bytes_read < 0) {
    kprintf ("copyexec_aux_replay_binlog: read returns %lld instead of %lld. %m\n", bytes_read, size);
    copyexec_abort ();
  }
  if (bytes_read != size) {
    kprintf ("copyexec_aux_replay_binlog: read returns %lld instead of %lld. %m\n", bytes_read, size);
    return -1;
  }
  return 0;
}
