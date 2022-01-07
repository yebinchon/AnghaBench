
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_vector ;
struct TYPE_3__ {int repo; } ;
typedef TYPE_1__ git_ignores ;
typedef int git_attr_file ;


 int GIT_ATTR_FILE__FROM_FILE ;
 int git_attr_cache__get (int **,int ,int *,int ,char const*,char const*,int ,int) ;
 int git_attr_file__free (int *) ;
 int git_vector_insert (int *,int *) ;
 int parse_ignore_file ;

__attribute__((used)) static int push_ignore_file(
 git_ignores *ignores,
 git_vector *which_list,
 const char *base,
 const char *filename)
{
 int error = 0;
 git_attr_file *file = ((void*)0);

 error = git_attr_cache__get(&file, ignores->repo, ((void*)0), GIT_ATTR_FILE__FROM_FILE,
        base, filename, parse_ignore_file, 0);
 if (error < 0)
  return error;

 if (file != ((void*)0)) {
  if ((error = git_vector_insert(which_list, file)) < 0)
   git_attr_file__free(file);
 }

 return error;
}
