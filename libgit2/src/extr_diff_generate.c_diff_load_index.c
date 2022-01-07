
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_index ;


 int git_error_clear () ;
 scalar_t__ git_index_read (int *,int) ;
 int git_repository_index__weakptr (int **,int *) ;

__attribute__((used)) static int diff_load_index(git_index **index, git_repository *repo)
{
 int error = git_repository_index__weakptr(index, repo);


 if (!error && git_index_read(*index, 0) < 0)
  git_error_clear();

 return error;
}
