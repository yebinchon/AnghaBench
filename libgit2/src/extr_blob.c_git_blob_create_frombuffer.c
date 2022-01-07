
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_oid ;


 int git_blob_create_from_buffer (int *,int *,void const*,size_t) ;

int git_blob_create_frombuffer(
 git_oid *id, git_repository *repo, const void *buffer, size_t len)
{
 return git_blob_create_from_buffer(id, repo, buffer, len);
}
