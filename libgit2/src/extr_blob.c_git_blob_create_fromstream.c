
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_writestream ;
typedef int git_repository ;


 int git_blob_create_from_stream (int **,int *,char const*) ;

int git_blob_create_fromstream(
    git_writestream **out,
    git_repository *repo,
    const char *hintpath)
{
 return git_blob_create_from_stream(out, repo, hintpath);
}
