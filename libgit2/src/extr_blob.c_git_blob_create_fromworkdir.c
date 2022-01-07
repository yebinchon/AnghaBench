
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_oid ;


 int git_blob_create_from_workdir (int *,int *,char const*) ;

int git_blob_create_fromworkdir(git_oid *id, git_repository *repo, const char *relative_path)
{
 return git_blob_create_from_workdir(id, repo, relative_path);
}
