
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_vector ;
struct TYPE_3__ {char** strings; int count; } ;
typedef TYPE_1__ git_strarray ;
typedef int git_repository ;
typedef int git_config ;


 int GIT_VECTOR_INIT ;
 int git__free ;
 int git__strcmp_cb ;
 int git_config_foreach_match (int *,char*,int ,int *) ;
 int git_repository_config__weakptr (int **,int *) ;
 scalar_t__ git_vector_detach (int *,int *,int *) ;
 int git_vector_free_deep (int *) ;
 int git_vector_init (int *,int,int ) ;
 int git_vector_uniq (int *,int ) ;
 int remote_list_cb ;

int git_remote_list(git_strarray *remotes_list, git_repository *repo)
{
 int error;
 git_config *cfg;
 git_vector list = GIT_VECTOR_INIT;

 if ((error = git_repository_config__weakptr(&cfg, repo)) < 0)
  return error;

 if ((error = git_vector_init(&list, 4, git__strcmp_cb)) < 0)
  return error;

 error = git_config_foreach_match(
  cfg, "^remote\\..*\\.(push)?url$", remote_list_cb, &list);

 if (error < 0) {
  git_vector_free_deep(&list);
  return error;
 }

 git_vector_uniq(&list, git__free);

 remotes_list->strings =
  (char **)git_vector_detach(&remotes_list->count, ((void*)0), &list);

 return 0;
}
