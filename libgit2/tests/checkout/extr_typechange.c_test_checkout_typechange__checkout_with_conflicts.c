
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int conflicts; int ignored; int updates; int dirty; int untracked; int member_0; } ;
typedef TYPE_1__ notify_counts ;
typedef int git_object ;
struct TYPE_7__ {int notify_flags; int checkout_strategy; TYPE_1__* notify_payload; int notify_cb; } ;
typedef TYPE_2__ git_checkout_options ;
typedef int cts ;


 int GIT_CHECKOUT_FORCE ;
 int GIT_CHECKOUT_NOTIFY_CONFLICT ;
 int GIT_CHECKOUT_NOTIFY_UNTRACKED ;
 TYPE_2__ GIT_CHECKOUT_OPTIONS_INIT ;
 int GIT_CHECKOUT_REMOVE_UNTRACKED ;
 int GIT_CHECKOUT_SAFE ;
 int GIT_RMDIR_REMOVE_FILES ;
 int assert_workdir_matches_tree (int ,int ,int *,int) ;
 int cl_assert (int) ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int force_create_file (char*) ;
 int g_repo ;
 int * g_typechange_expected_conflicts ;
 int * g_typechange_expected_untracked ;
 int ** g_typechange_oids ;
 int git_checkout_tree (int ,int *,TYPE_2__*) ;
 int git_futils_rmdir_r (char*,int *,int ) ;
 int git_object_free (int *) ;
 int git_object_id (int *) ;
 int git_path_exists (char*) ;
 int git_repository_set_head_detached (int ,int ) ;
 int git_revparse_single (int **,int ,int *) ;
 int git_submodule_foreach (int ,int ,int *) ;
 int make_submodule_dirty ;
 int memset (TYPE_1__*,int ,int) ;
 int notify_counter ;
 int p_mkdir (char*,int) ;

void test_checkout_typechange__checkout_with_conflicts(void)
{
 int i;
 git_object *obj;
 git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;
 notify_counts cts = {0};

 opts.notify_flags =
  GIT_CHECKOUT_NOTIFY_CONFLICT | GIT_CHECKOUT_NOTIFY_UNTRACKED;
 opts.notify_cb = notify_counter;
 opts.notify_payload = &cts;

 for (i = 0; g_typechange_oids[i] != ((void*)0); ++i) {
  cl_git_pass(git_revparse_single(&obj, g_repo, g_typechange_oids[i]));

  force_create_file("typechanges/a/blocker");
  force_create_file("typechanges/b");
  force_create_file("typechanges/c/sub/sub/file");
  git_futils_rmdir_r("typechanges/d", ((void*)0), GIT_RMDIR_REMOVE_FILES);
  p_mkdir("typechanges/d", 0777);
  force_create_file("typechanges/untracked");
  cl_git_pass(git_submodule_foreach(g_repo, make_submodule_dirty, ((void*)0)));

  opts.checkout_strategy = GIT_CHECKOUT_SAFE;
  memset(&cts, 0, sizeof(cts));

  cl_git_fail(git_checkout_tree(g_repo, obj, &opts));
  cl_assert_equal_i(cts.conflicts, g_typechange_expected_conflicts[i]);
  cl_assert_equal_i(cts.untracked, g_typechange_expected_untracked[i]);
  cl_assert_equal_i(cts.dirty, 0);
  cl_assert_equal_i(cts.updates, 0);
  cl_assert_equal_i(cts.ignored, 0);

  opts.checkout_strategy =
   GIT_CHECKOUT_FORCE | GIT_CHECKOUT_REMOVE_UNTRACKED;
  memset(&cts, 0, sizeof(cts));

  cl_assert(git_path_exists("typechanges/untracked"));

  cl_git_pass(git_checkout_tree(g_repo, obj, &opts));
  cl_assert_equal_i(0, cts.conflicts);

  cl_assert(!git_path_exists("typechanges/untracked"));

  cl_git_pass(
   git_repository_set_head_detached(g_repo, git_object_id(obj)));

  assert_workdir_matches_tree(g_repo, git_object_id(obj), ((void*)0), 1);

  git_object_free(obj);
 }
}
