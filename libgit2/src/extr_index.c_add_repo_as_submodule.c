
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct stat {int dummy; } ;
typedef int git_repository ;
typedef int git_reference ;
struct TYPE_12__ {int mode; int id; } ;
typedef TYPE_1__ git_index_entry ;
struct TYPE_13__ {int distrust_filemode; } ;
typedef TYPE_2__ git_index ;
struct TYPE_14__ {int ptr; } ;
typedef TYPE_3__ git_buf ;


 TYPE_3__ GIT_BUF_INIT ;
 int GIT_ERROR_OS ;
 int GIT_FILEMODE_COMMIT ;
 int * INDEX_OWNER (TYPE_2__*) ;
 int git_buf_dispose (TYPE_3__*) ;
 int git_buf_joinpath (TYPE_3__*,int ,char const*) ;
 int git_error_set (int ,char*) ;
 int git_index_entry__init_from_stat (TYPE_1__*,struct stat*,int) ;
 int git_oid_cpy (int *,int ) ;
 int git_reference_free (int *) ;
 int git_reference_target (int *) ;
 int git_repository_free (int *) ;
 int git_repository_head (int **,int *) ;
 int git_repository_open (int **,int ) ;
 int git_repository_workdir (int *) ;
 scalar_t__ index_entry_create (TYPE_1__**,int *,char const*,struct stat*,int) ;
 int p_stat (int ,struct stat*) ;

__attribute__((used)) static int add_repo_as_submodule(git_index_entry **out, git_index *index, const char *path)
{
 git_repository *sub;
 git_buf abspath = GIT_BUF_INIT;
 git_repository *repo = INDEX_OWNER(index);
 git_reference *head;
 git_index_entry *entry;
 struct stat st;
 int error;

 if ((error = git_buf_joinpath(&abspath, git_repository_workdir(repo), path)) < 0)
  return error;

 if ((error = p_stat(abspath.ptr, &st)) < 0) {
  git_error_set(GIT_ERROR_OS, "failed to stat repository dir");
  return -1;
 }

 if (index_entry_create(&entry, INDEX_OWNER(index), path, &st, 1) < 0)
  return -1;

 git_index_entry__init_from_stat(entry, &st, !index->distrust_filemode);

 if ((error = git_repository_open(&sub, abspath.ptr)) < 0)
  return error;

 if ((error = git_repository_head(&head, sub)) < 0)
  return error;

 git_oid_cpy(&entry->id, git_reference_target(head));
 entry->mode = GIT_FILEMODE_COMMIT;

 git_reference_free(head);
 git_repository_free(sub);
 git_buf_dispose(&abspath);

 *out = entry;
 return 0;
}
