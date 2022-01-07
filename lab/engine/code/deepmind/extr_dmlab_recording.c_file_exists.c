
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 scalar_t__ S_ISREG (int ) ;
 scalar_t__ stat (char const*,struct stat*) ;

__attribute__((used)) static bool file_exists(const char* path) {
  struct stat path_stat;
  return stat(path, &path_stat) == 0 && S_ISREG(path_stat.st_mode);
}
