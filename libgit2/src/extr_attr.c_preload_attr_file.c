
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_attr_session ;
typedef int git_attr_file_source ;
typedef int git_attr_file ;


 int git_attr_cache__get (int **,int *,int *,int ,char const*,char const*,int ,int) ;
 int git_attr_file__free (int *) ;
 int git_attr_file__parse_buffer ;

__attribute__((used)) static int preload_attr_file(
 git_repository *repo,
 git_attr_session *attr_session,
 git_attr_file_source source,
 const char *base,
 const char *file,
 bool allow_macros)
{
 int error;
 git_attr_file *preload = ((void*)0);

 if (!file)
  return 0;
 if (!(error = git_attr_cache__get(&preload, repo, attr_session, source, base, file,
       git_attr_file__parse_buffer, allow_macros)))
  git_attr_file__free(preload);

 return error;
}
