
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_tag ;
typedef int git_oid ;
typedef int git_object ;


 int const* git_object_id (int const*) ;

const git_oid *git_tag_id(const git_tag *obj)
{
 return git_object_id((const git_object *)obj);
}
