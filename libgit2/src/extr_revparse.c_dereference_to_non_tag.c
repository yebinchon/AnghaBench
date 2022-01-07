
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_tag ;
typedef int git_object ;


 scalar_t__ GIT_OBJECT_TAG ;
 int git_object_dup (int **,int *) ;
 scalar_t__ git_object_type (int *) ;
 int git_tag_peel (int **,int *) ;

__attribute__((used)) static int dereference_to_non_tag(git_object **out, git_object *obj)
{
 if (git_object_type(obj) == GIT_OBJECT_TAG)
  return git_tag_peel(out, (git_tag *)obj);

 return git_object_dup(out, obj);
}
