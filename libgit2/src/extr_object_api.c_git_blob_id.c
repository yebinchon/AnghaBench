
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;
typedef int git_object ;
typedef int git_blob ;


 int const* git_object_id (int const*) ;

const git_oid *git_blob_id(const git_blob *obj)
{
 return git_object_id((const git_object *)obj);
}
