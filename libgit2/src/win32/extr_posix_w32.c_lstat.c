
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;


 int do_lstat (char const*,struct stat*,int) ;

int p_lstat_posixly(const char *filename, struct stat *buf)
{
 return do_lstat(filename, buf, 1);
}
