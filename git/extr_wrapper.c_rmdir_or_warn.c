
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rmdir (char const*) ;
 int warn_if_unremovable (char*,char const*,int ) ;

int rmdir_or_warn(const char *file)
{
 return warn_if_unremovable("rmdir", file, rmdir(file));
}
