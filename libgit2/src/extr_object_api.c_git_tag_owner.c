
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_tag ;
typedef int git_repository ;
typedef int git_object ;


 int * git_object_owner (int const*) ;

git_repository *git_tag_owner(const git_tag *obj)
{
 return git_object_owner((const git_object *)obj);
}
