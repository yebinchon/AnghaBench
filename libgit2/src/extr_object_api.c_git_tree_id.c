
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_tree ;
typedef int git_oid ;
typedef int git_object ;


 int const* git_object_id (int const*) ;

const git_oid *git_tree_id(const git_tree *obj)
{
 return git_object_id((const git_object *)obj);
}
