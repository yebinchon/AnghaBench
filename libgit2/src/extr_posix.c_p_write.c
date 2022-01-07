
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;
typedef int git_file ;


 scalar_t__ EINTR ;
 scalar_t__ EPIPE ;
 scalar_t__ GIT_ISBLOCKED (scalar_t__) ;
 int assert (int) ;
 scalar_t__ errno ;
 scalar_t__ write (int ,char const*,size_t) ;

int p_write(git_file fd, const void *buf, size_t cnt)
{
 const char *b = buf;

 while (cnt) {
  ssize_t r;




  r = write(fd, b, cnt);

  if (r < 0) {
   if (errno == EINTR || GIT_ISBLOCKED(errno))
    continue;
   return -1;
  }
  if (!r) {
   errno = EPIPE;
   return -1;
  }
  cnt -= r;
  b += r;
 }
 return 0;
}
