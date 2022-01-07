
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;


 scalar_t__ lstat (char const*,struct stat*) ;

int file_exists(const char *f)
{
 struct stat sb;
 return lstat(f, &sb) == 0;
}
