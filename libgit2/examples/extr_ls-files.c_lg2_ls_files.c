
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ls_options ;
typedef int git_repository ;
typedef int git_index ;


 int git_index_free (int *) ;
 int git_repository_index (int **,int *) ;
 int parse_options (int *,int,char**) ;
 int print_paths (int *,int *) ;

int lg2_ls_files(git_repository *repo, int argc, char *argv[])
{
 git_index *index = ((void*)0);
 ls_options opts;
 int error;

 if ((error = parse_options(&opts, argc, argv)) < 0)
  return error;

 if ((error = git_repository_index(&index, repo)) < 0)
  goto cleanup;

 error = print_paths(&opts, index);

cleanup:
 git_index_free(index);

 return error;
}
