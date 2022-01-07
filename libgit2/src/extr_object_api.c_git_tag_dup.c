
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_tag ;
typedef int git_object ;


 int git_object_dup (int **,int *) ;

int git_tag_dup(git_tag **out, git_tag *obj)
{
 return git_object_dup((git_object **)out, (git_object *)obj);
}
