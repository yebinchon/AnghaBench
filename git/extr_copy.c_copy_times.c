
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utimbuf {int modtime; int actime; } ;
struct stat {int st_mtime; int st_atime; } ;


 scalar_t__ stat (char const*,struct stat*) ;
 scalar_t__ utime (char const*,struct utimbuf*) ;

__attribute__((used)) static int copy_times(const char *dst, const char *src)
{
 struct stat st;
 struct utimbuf times;
 if (stat(src, &st) < 0)
  return -1;
 times.actime = st.st_atime;
 times.modtime = st.st_mtime;
 if (utime(dst, &times) < 0)
  return -1;
 return 0;
}
