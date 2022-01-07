
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int git_reference ;
typedef int git_object ;
typedef int git_commit ;
struct TYPE_9__ {char** strings; int count; } ;
struct TYPE_10__ {TYPE_1__ paths; int checkout_strategy; } ;
typedef TYPE_2__ git_checkout_options ;
struct TYPE_11__ {int ptr; } ;
typedef TYPE_3__ git_buf ;


 int GIT_CHECKOUT_FORCE ;
 TYPE_2__ GIT_CHECKOUT_OPTIONS_INIT ;
 int GIT_OBJECT_COMMIT ;
 int GIT_STASH_DEFAULT ;
 int assert_commit_message_contains (char*,char*) ;
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int git_buf_dispose (TYPE_3__*) ;
 int git_buf_init (TYPE_3__*,int ) ;
 int git_buf_printf (TYPE_3__*,char*,char const*) ;
 int git_checkout_tree (int ,int *,TYPE_2__*) ;
 int git_commit_free (int *) ;
 int git_reference_free (int *) ;
 int git_reference_peel (int **,int *,int ) ;
 int git_repository_head (int **,int ) ;
 char* git_repository_workdir (int ) ;
 int git_stash_save (int *,int ,int ,int *,int ) ;
 int p_mkdir (int ,int) ;
 int repo ;
 int signature ;
 int stash_tip_oid ;

void test_stash_save__untracked_regression(void)
{
 git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;
 const char *paths[] = {"what", "where", "how", "why"};
 git_reference *head;
 git_commit *head_commit;
 git_buf untracked_dir;

 const char* workdir = git_repository_workdir(repo);

 git_buf_init(&untracked_dir, 0);
 git_buf_printf(&untracked_dir, "%sz", workdir);

 cl_assert(!p_mkdir(untracked_dir.ptr, 0777));

 cl_git_pass(git_repository_head(&head, repo));

 cl_git_pass(git_reference_peel((git_object **)&head_commit, head, GIT_OBJECT_COMMIT));

 opts.checkout_strategy = GIT_CHECKOUT_FORCE;

 opts.paths.strings = (char **)paths;
 opts.paths.count = 4;

 cl_git_pass(git_checkout_tree(repo, (git_object*)head_commit, &opts));

 cl_git_pass(git_stash_save(&stash_tip_oid, repo, signature, ((void*)0), GIT_STASH_DEFAULT));

 assert_commit_message_contains("refs/stash", "WIP on master");

 git_reference_free(head);
 git_commit_free(head_commit);
 git_buf_dispose(&untracked_dir);
}
