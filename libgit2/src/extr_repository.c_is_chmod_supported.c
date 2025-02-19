
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 int S_IXUSR ;
 scalar_t__ p_chmod (char const*,int) ;
 scalar_t__ p_stat (char const*,struct stat*) ;

__attribute__((used)) static bool is_chmod_supported(const char *file_path)
{
 struct stat st1, st2;

 if (p_stat(file_path, &st1) < 0)
  return 0;

 if (p_chmod(file_path, st1.st_mode ^ S_IXUSR) < 0)
  return 0;

 if (p_stat(file_path, &st2) < 0)
  return 0;

 return (st1.st_mode != st2.st_mode);
}
