
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int new_name; int old_name; } ;
typedef TYPE_2__ rename_cb_data ;
typedef int git_repository ;
struct TYPE_7__ {int symbolic; } ;
struct TYPE_9__ {TYPE_1__ target; } ;
typedef TYPE_3__ git_reference ;


 int GIT_ERROR_REFERENCE ;
 scalar_t__ GIT_REFERENCE_SYMBOLIC ;
 int git__free (char*) ;
 scalar_t__ git__strcmp (int ,int ) ;
 int git_error_set (int ,char*) ;
 char* git_path_dirname (char const*) ;
 int git_reference__read_head (TYPE_3__**,int *,char const*) ;
 int git_reference_free (TYPE_3__*) ;
 scalar_t__ git_reference_type (TYPE_3__*) ;
 int git_repository_create_head (char*,int ) ;

__attribute__((used)) static int update_wt_heads(git_repository *repo, const char *path, void *payload)
{
 rename_cb_data *data = (rename_cb_data *) payload;
 git_reference *head = ((void*)0);
 char *gitdir = ((void*)0);
 int error;

 if ((error = git_reference__read_head(&head, repo, path)) < 0) {
  git_error_set(GIT_ERROR_REFERENCE, "could not read HEAD when renaming references");
  goto out;
 }

 if ((gitdir = git_path_dirname(path)) == ((void*)0)) {
  error = -1;
  goto out;
 }

 if (git_reference_type(head) != GIT_REFERENCE_SYMBOLIC ||
     git__strcmp(head->target.symbolic, data->old_name) != 0) {
  error = 0;
  goto out;
 }


 if ((error = git_repository_create_head(gitdir, data->new_name)) < 0) {
  git_error_set(GIT_ERROR_REFERENCE, "failed to update HEAD after renaming reference");
  goto out;
 }

out:
 git_reference_free(head);
 git__free(gitdir);

 return error;
}
