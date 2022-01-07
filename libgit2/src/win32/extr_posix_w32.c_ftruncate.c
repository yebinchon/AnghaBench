
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ git_off_t ;


 int EFBIG ;
 int EINVAL ;
 scalar_t__ INT32_MAX ;
 int _chsize (int,long) ;
 scalar_t__ _chsize_s (int,scalar_t__) ;
 int errno ;

int p_ftruncate(int fd, git_off_t size)
{
 if (size < 0) {
  errno = EINVAL;
  return -1;
 }


 return ((_chsize_s(fd, size) == 0) ? 0 : -1);
}
