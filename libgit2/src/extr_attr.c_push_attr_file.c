
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_vector ;
typedef int git_repository ;
typedef int git_attr_session ;
typedef int git_attr_file_source ;
typedef int git_attr_file ;


 int git_attr_cache__get (int **,int *,int *,int ,char const*,char const*,int ,int) ;
 int git_attr_file__free (int *) ;
 int git_attr_file__parse_buffer ;
 int git_vector_insert (int *,int *) ;

__attribute__((used)) static int push_attr_file(
 git_repository *repo,
 git_attr_session *attr_session,
 git_vector *list,
 git_attr_file_source source,
 const char *base,
 const char *filename,
 bool allow_macros)
{
 int error = 0;
 git_attr_file *file = ((void*)0);

 error = git_attr_cache__get(&file, repo, attr_session,
  source, base, filename, git_attr_file__parse_buffer, allow_macros);

 if (error < 0)
  return error;

 if (file != ((void*)0)) {
  if ((error = git_vector_insert(list, file)) < 0)
   git_attr_file__free(file);
 }

 return error;
}
