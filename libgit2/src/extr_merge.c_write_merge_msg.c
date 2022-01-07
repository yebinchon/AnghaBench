
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct merge_msg_entry {int written; TYPE_4__ const* merge_head; } ;
struct TYPE_18__ {scalar_t__ length; } ;
typedef TYPE_1__ git_vector ;
struct TYPE_19__ {int gitdir; } ;
typedef TYPE_2__ git_repository ;
typedef int git_filebuf ;
struct TYPE_20__ {int ptr; } ;
typedef TYPE_3__ git_buf ;
struct TYPE_21__ {int id_str; } ;
typedef TYPE_4__ git_annotated_commit ;


 TYPE_3__ GIT_BUF_INIT ;
 int GIT_ERROR_CHECK_ALLOC (struct merge_msg_entry*) ;
 int GIT_FILEBUF_CREATE_LEADING_DIRS ;
 int GIT_FILEBUF_INIT ;
 int GIT_MERGE_FILE_MODE ;
 int GIT_MERGE_MSG_FILE ;
 TYPE_1__ GIT_VECTOR_INIT ;
 int assert (int) ;
 struct merge_msg_entry* git__calloc (size_t,int) ;
 int git__free (struct merge_msg_entry*) ;
 int git_buf_dispose (TYPE_3__*) ;
 int git_buf_joinpath (TYPE_3__*,int ,int ) ;
 int git_filebuf_cleanup (int *) ;
 int git_filebuf_commit (int *) ;
 int git_filebuf_open (int *,int ,int ,int ) ;
 int git_filebuf_printf (int *,char*,...) ;
 int git_filebuf_write (int *,char*,int) ;
 int git_vector_free (TYPE_1__*) ;
 scalar_t__ git_vector_init (TYPE_1__*,size_t,int *) ;
 int merge_msg_entries (TYPE_1__*,struct merge_msg_entry*,size_t,int ) ;
 scalar_t__ merge_msg_entry_written (struct merge_msg_entry*) ;
 int merge_msg_write_branches (int *,TYPE_1__*,char) ;
 int merge_msg_write_remotes (int *,TYPE_1__*,char) ;
 int merge_msg_write_tags (int *,TYPE_1__*,char) ;
 int merge_msg_write_tracking (int *,TYPE_1__*,char) ;
 int msg_entry_is_branch ;
 int msg_entry_is_oid (struct merge_msg_entry*) ;
 int msg_entry_is_remote ;
 int msg_entry_is_tag ;
 int msg_entry_is_tracking ;

__attribute__((used)) static int write_merge_msg(
 git_repository *repo,
 const git_annotated_commit *heads[],
 size_t heads_len)
{
 git_filebuf file = GIT_FILEBUF_INIT;
 git_buf file_path = GIT_BUF_INIT;
 struct merge_msg_entry *entries;
 git_vector matching = GIT_VECTOR_INIT;
 size_t i;
 char sep = 0;
 int error = 0;

 assert(repo && heads);

 entries = git__calloc(heads_len, sizeof(struct merge_msg_entry));
 GIT_ERROR_CHECK_ALLOC(entries);

 if (git_vector_init(&matching, heads_len, ((void*)0)) < 0) {
  git__free(entries);
  return -1;
 }

 for (i = 0; i < heads_len; i++)
  entries[i].merge_head = heads[i];

 if ((error = git_buf_joinpath(&file_path, repo->gitdir, GIT_MERGE_MSG_FILE)) < 0 ||
  (error = git_filebuf_open(&file, file_path.ptr, GIT_FILEBUF_CREATE_LEADING_DIRS, GIT_MERGE_FILE_MODE)) < 0 ||
  (error = git_filebuf_write(&file, "Merge ", 6)) < 0)
  goto cleanup;
 for (i = 0; i < heads_len; i++) {
  if (!msg_entry_is_oid(&entries[i]))
   break;

  if ((error = git_filebuf_printf(&file,
   "%scommit '%s'", (i > 0) ? "; " : "",
   entries[i].merge_head->id_str)) < 0)
   goto cleanup;

  entries[i].written = 1;
 }

 if (i)
  sep = ';';

 if ((error = merge_msg_entries(&matching, entries, heads_len, msg_entry_is_branch)) < 0 ||
  (error = merge_msg_write_branches(&file, &matching, sep)) < 0)
  goto cleanup;

 if (matching.length)
  sep =',';

 if ((error = merge_msg_entries(&matching, entries, heads_len, msg_entry_is_tracking)) < 0 ||
  (error = merge_msg_write_tracking(&file, &matching, sep)) < 0)
  goto cleanup;

 if (matching.length)
  sep =',';

 if ((error = merge_msg_entries(&matching, entries, heads_len, msg_entry_is_tag)) < 0 ||
  (error = merge_msg_write_tags(&file, &matching, sep)) < 0)
  goto cleanup;

 if (matching.length)
  sep =',';



 while ((error = merge_msg_entries(&matching, entries, heads_len, msg_entry_is_remote)) > 0) {
  if ((error = merge_msg_write_remotes(&file, &matching, sep)) < 0)
   goto cleanup;

  if (matching.length)
   sep =',';
 }

 if (error < 0)
  goto cleanup;

 for (i = 0; i < heads_len; i++) {
  if (merge_msg_entry_written(&entries[i]))
   continue;

  if ((error = git_filebuf_printf(&file, "; commit '%s'",
   entries[i].merge_head->id_str)) < 0)
   goto cleanup;
 }

 if ((error = git_filebuf_printf(&file, "\n")) < 0 ||
  (error = git_filebuf_commit(&file)) < 0)
  goto cleanup;

cleanup:
 if (error < 0)
  git_filebuf_cleanup(&file);

 git_buf_dispose(&file_path);

 git_vector_free(&matching);
 git__free(entries);

 return error;
}
