
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int gitdir; } ;
typedef TYPE_1__ git_repository ;
struct TYPE_11__ {char* path; } ;
typedef TYPE_2__ git_index_entry ;
typedef int git_index ;
typedef int git_filebuf ;
struct TYPE_12__ {int ptr; } ;
typedef TYPE_3__ git_buf ;


 TYPE_3__ GIT_BUF_INIT ;
 int GIT_FILEBUF_APPEND ;
 int GIT_FILEBUF_INIT ;
 int GIT_MERGE_FILE_MODE ;
 int GIT_MERGE_MSG_FILE ;
 int git_buf_dispose (TYPE_3__*) ;
 int git_buf_joinpath (TYPE_3__*,int ,int ) ;
 int git_filebuf_cleanup (int *) ;
 int git_filebuf_commit (int *) ;
 int git_filebuf_open (int *,int ,int ,int ) ;
 int git_filebuf_printf (int *,char*,...) ;
 int git_index_entry_is_conflict (TYPE_2__ const*) ;
 size_t git_index_entrycount (int *) ;
 TYPE_2__* git_index_get_byindex (int *,size_t) ;
 int git_index_has_conflicts (int *) ;
 scalar_t__ strcmp (char*,char const*) ;

int git_merge__append_conflicts_to_merge_msg(
 git_repository *repo,
 git_index *index)
{
 git_filebuf file = GIT_FILEBUF_INIT;
 git_buf file_path = GIT_BUF_INIT;
 const char *last = ((void*)0);
 size_t i;
 int error;

 if (!git_index_has_conflicts(index))
  return 0;

 if ((error = git_buf_joinpath(&file_path, repo->gitdir, GIT_MERGE_MSG_FILE)) < 0 ||
  (error = git_filebuf_open(&file, file_path.ptr, GIT_FILEBUF_APPEND, GIT_MERGE_FILE_MODE)) < 0)
  goto cleanup;

 git_filebuf_printf(&file, "\nConflicts:\n");

 for (i = 0; i < git_index_entrycount(index); i++) {
  const git_index_entry *e = git_index_get_byindex(index, i);

  if (!git_index_entry_is_conflict(e))
   continue;

  if (last == ((void*)0) || strcmp(e->path, last) != 0)
   git_filebuf_printf(&file, "\t%s\n", e->path);

  last = e->path;
 }

 error = git_filebuf_commit(&file);

cleanup:
 if (error < 0)
  git_filebuf_cleanup(&file);

 git_buf_dispose(&file_path);

 return error;
}
