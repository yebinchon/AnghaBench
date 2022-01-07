
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int git_file ;


 scalar_t__ EAGAIN ;
 scalar_t__ EINTR ;
 scalar_t__ EINVAL ;
 int ERROR_INVALID_PARAMETER ;
 size_t INT_MAX ;
 int SetLastError (int ) ;
 scalar_t__ errno ;
 int git__is_ssizet (size_t) ;
 int read (int ,char*,size_t) ;

ssize_t p_read(git_file fd, void *buf, size_t cnt)
{
 char *b = buf;

 if (!git__is_ssizet(cnt)) {



  errno = EINVAL;
  return -1;
 }

 while (cnt) {
  ssize_t r;



  r = read(fd, b, cnt);

  if (r < 0) {
   if (errno == EINTR || errno == EAGAIN)
    continue;
   return -1;
  }
  if (!r)
   break;
  cnt -= r;
  b += r;
 }
 return (b - (char *)buf);
}
