
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 scalar_t__ lstat (char const*,struct stat*) ;

__attribute__((used)) static int get_st_mode_bits(const char *path, int *mode)
{
 struct stat st;
 if (lstat(path, &st) < 0)
  return -1;
 *mode = st.st_mode;
 return 0;
}
