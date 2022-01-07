
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int copy_file (char const*,char const*,int) ;
 int copy_times (char const*,char const*) ;

int copy_file_with_time(const char *dst, const char *src, int mode)
{
 int status = copy_file(dst, src, mode);
 if (!status)
  return copy_times(dst, src);
 return status;
}
