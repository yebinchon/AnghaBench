
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef int ssize_t ;


 scalar_t__ EINTR ;
 scalar_t__ EPIPE ;
 int assert (int) ;
 scalar_t__ errno ;
 int write (int,int*,int) ;

__attribute__((used)) static void uv__write_int(int fd, int val) {
  ssize_t n;

  do
    n = write(fd, &val, sizeof(val));
  while (n == -1 && errno == EINTR);

  if (n == -1 && errno == EPIPE)
    return;

  assert(n == sizeof(val));
}
