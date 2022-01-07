
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int gitdir; } ;
typedef TYPE_1__ git_repository ;
typedef int git_buf ;


 int GIT_BISECT_LOG_FILE ;
 int GIT_BUF_INIT ;
 int GIT_CHERRYPICK_HEAD_FILE ;
 int GIT_MERGE_HEAD_FILE ;
 int GIT_REBASE_APPLY_APPLYING_FILE ;
 int GIT_REBASE_APPLY_DIR ;
 int GIT_REBASE_APPLY_REBASING_FILE ;
 int GIT_REBASE_MERGE_DIR ;
 int GIT_REBASE_MERGE_INTERACTIVE_FILE ;
 int GIT_REPOSITORY_STATE_APPLY_MAILBOX ;
 int GIT_REPOSITORY_STATE_APPLY_MAILBOX_OR_REBASE ;
 int GIT_REPOSITORY_STATE_BISECT ;
 int GIT_REPOSITORY_STATE_CHERRYPICK ;
 int GIT_REPOSITORY_STATE_CHERRYPICK_SEQUENCE ;
 int GIT_REPOSITORY_STATE_MERGE ;
 int GIT_REPOSITORY_STATE_NONE ;
 int GIT_REPOSITORY_STATE_REBASE ;
 int GIT_REPOSITORY_STATE_REBASE_INTERACTIVE ;
 int GIT_REPOSITORY_STATE_REBASE_MERGE ;
 int GIT_REPOSITORY_STATE_REVERT ;
 int GIT_REPOSITORY_STATE_REVERT_SEQUENCE ;
 int GIT_REVERT_HEAD_FILE ;
 int GIT_SEQUENCER_TODO_FILE ;
 int assert (TYPE_1__*) ;
 int git_buf_dispose (int *) ;
 scalar_t__ git_buf_puts (int *,int ) ;
 scalar_t__ git_path_contains_dir (int *,int ) ;
 scalar_t__ git_path_contains_file (int *,int ) ;

int git_repository_state(git_repository *repo)
{
 git_buf repo_path = GIT_BUF_INIT;
 int state = GIT_REPOSITORY_STATE_NONE;

 assert(repo);

 if (git_buf_puts(&repo_path, repo->gitdir) < 0)
  return -1;

 if (git_path_contains_file(&repo_path, GIT_REBASE_MERGE_INTERACTIVE_FILE))
  state = GIT_REPOSITORY_STATE_REBASE_INTERACTIVE;
 else if (git_path_contains_dir(&repo_path, GIT_REBASE_MERGE_DIR))
  state = GIT_REPOSITORY_STATE_REBASE_MERGE;
 else if (git_path_contains_file(&repo_path, GIT_REBASE_APPLY_REBASING_FILE))
  state = GIT_REPOSITORY_STATE_REBASE;
 else if (git_path_contains_file(&repo_path, GIT_REBASE_APPLY_APPLYING_FILE))
  state = GIT_REPOSITORY_STATE_APPLY_MAILBOX;
 else if (git_path_contains_dir(&repo_path, GIT_REBASE_APPLY_DIR))
  state = GIT_REPOSITORY_STATE_APPLY_MAILBOX_OR_REBASE;
 else if (git_path_contains_file(&repo_path, GIT_MERGE_HEAD_FILE))
  state = GIT_REPOSITORY_STATE_MERGE;
 else if (git_path_contains_file(&repo_path, GIT_REVERT_HEAD_FILE)) {
  state = GIT_REPOSITORY_STATE_REVERT;
  if (git_path_contains_file(&repo_path, GIT_SEQUENCER_TODO_FILE)) {
   state = GIT_REPOSITORY_STATE_REVERT_SEQUENCE;
  }
 } else if (git_path_contains_file(&repo_path, GIT_CHERRYPICK_HEAD_FILE)) {
  state = GIT_REPOSITORY_STATE_CHERRYPICK;
  if (git_path_contains_file(&repo_path, GIT_SEQUENCER_TODO_FILE)) {
   state = GIT_REPOSITORY_STATE_CHERRYPICK_SEQUENCE;
  }
 } else if (git_path_contains_file(&repo_path, GIT_BISECT_LOG_FILE))
  state = GIT_REPOSITORY_STATE_BISECT;

 git_buf_dispose(&repo_path);
 return state;
}
