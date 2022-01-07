
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_odb ;


 int git_odb__add_default_backends (int *,char const*,int,int ) ;

int git_odb_add_disk_alternate(git_odb *odb, const char *path)
{
 return git_odb__add_default_backends(odb, path, 1, 0);
}
