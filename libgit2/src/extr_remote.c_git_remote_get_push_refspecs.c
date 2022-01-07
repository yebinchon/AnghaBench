
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_strarray ;
typedef int git_remote ;


 int copy_refspecs (int *,int const*,int) ;

int git_remote_get_push_refspecs(git_strarray *array, const git_remote *remote)
{
 return copy_refspecs(array, remote, 1);
}
