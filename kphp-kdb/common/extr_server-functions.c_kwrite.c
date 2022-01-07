
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;


 int EINTR ;
 int S_BUF_SIZE ;
 int assert (int) ;
 int errno ;
 int getpid () ;
 int kwrite_print_int (char**,char*,int,int ) ;
 int time (int *) ;
 scalar_t__ write (int,void const*,size_t) ;

ssize_t kwrite (int fd, const void *buf, size_t count) {
  int old_errno = errno;


  char s[100], *s_begin = s + 100;

  kwrite_print_int (&s_begin, "time", 4, time (((void*)0)));
  kwrite_print_int (&s_begin, "pid" , 3, getpid ());

  assert (s_begin >= s);

  size_t s_count = s + 100 - s_begin;
  ssize_t result = s_count + count;
  while (s_count > 0) {
    errno = 0;
    ssize_t res = write (fd, s_begin, s_count);
    if (errno && errno != EINTR) {
      errno = old_errno;
      return res;
    }
    if (!res) {
      break;
    }
    if (res >= 0) {
      s_begin += res;
      s_count -= res;
    }
  }

  while (count > 0) {
    errno = 0;
    ssize_t res = write (fd, buf, count);
    if (errno && errno != EINTR) {
      errno = old_errno;
      return res;
    }
    if (!res) {
      break;
    }
    if (res >= 0) {
      buf += res;
      count -= res;
    }
  }

  errno = old_errno;
  return result;

}
