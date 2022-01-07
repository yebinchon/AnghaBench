
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_tree ;
typedef int git_repository ;
typedef int git_object ;


 int * git_object_owner (int const*) ;

git_repository *git_tree_owner(const git_tree *obj)
{
 return git_object_owner((const git_object *)obj);
}
