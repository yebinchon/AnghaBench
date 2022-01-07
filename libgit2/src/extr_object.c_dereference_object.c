
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_tree ;
typedef int git_tag ;
typedef int git_object_t ;
typedef int git_object ;
typedef int git_commit ;


 int GIT_EINVALIDSPEC ;
 int GIT_EPEEL ;




 int git_commit_tree (int **,int *) ;
 int git_object_type (int *) ;
 int git_tag_target (int **,int *) ;

__attribute__((used)) static int dereference_object(git_object **dereferenced, git_object *obj)
{
 git_object_t type = git_object_type(obj);

 switch (type) {
 case 130:
  return git_commit_tree((git_tree **)dereferenced, (git_commit*)obj);

 case 129:
  return git_tag_target(dereferenced, (git_tag*)obj);

 case 131:
 case 128:
  return GIT_EPEEL;

 default:
  return GIT_EINVALIDSPEC;
 }
}
