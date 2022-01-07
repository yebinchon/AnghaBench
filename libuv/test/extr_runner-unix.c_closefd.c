
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EINPROGRESS ;
 scalar_t__ EINTR ;
 int abort () ;
 scalar_t__ close (int) ;
 scalar_t__ errno ;
 int perror (char*) ;

__attribute__((used)) static void closefd(int fd) {
  if (close(fd) == 0 || errno == EINTR || errno == EINPROGRESS)
    return;

  perror("close");
  abort();
}
