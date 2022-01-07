
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_reference ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int git_buf_dispose (int *) ;
 int git_reference_delete (int *) ;
 int git_reference_free (int *) ;
 int retrieve_tag_reference (int **,int *,int *,char const*) ;

int git_tag_delete(git_repository *repo, const char *tag_name)
{
 git_reference *tag_ref;
 git_buf ref_name = GIT_BUF_INIT;
 int error;

 error = retrieve_tag_reference(&tag_ref, &ref_name, repo, tag_name);

 git_buf_dispose(&ref_name);

 if (error < 0)
  return error;

 error = git_reference_delete(tag_ref);

 git_reference_free(tag_ref);

 return error;
}
