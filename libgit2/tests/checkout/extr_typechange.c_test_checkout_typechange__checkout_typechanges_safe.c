
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_object ;
struct TYPE_4__ {int checkout_strategy; } ;
typedef TYPE_1__ git_checkout_options ;


 int GIT_CHECKOUT_FORCE ;
 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ;
 int GIT_CHECKOUT_SAFE ;
 int assert_workdir_matches_tree (int ,int ,int *,int) ;
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int * g_typechange_empty ;
 int ** g_typechange_oids ;
 int git_checkout_tree (int ,int *,TYPE_1__*) ;
 int git_object_free (int *) ;
 int git_object_id (int *) ;
 int git_path_exists (char*) ;
 int git_path_isdir (char*) ;
 int git_repository_set_head_detached (int ,int ) ;
 int git_revparse_single (int **,int ,int *) ;

void test_checkout_typechange__checkout_typechanges_safe(void)
{
 int i;
 git_object *obj;
 git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;

 for (i = 0; g_typechange_oids[i] != ((void*)0); ++i) {
  cl_git_pass(git_revparse_single(&obj, g_repo, g_typechange_oids[i]));

  opts.checkout_strategy = !i ? GIT_CHECKOUT_FORCE : GIT_CHECKOUT_SAFE;

  cl_git_pass(git_checkout_tree(g_repo, obj, &opts));

  cl_git_pass(
   git_repository_set_head_detached(g_repo, git_object_id(obj)));

  assert_workdir_matches_tree(g_repo, git_object_id(obj), ((void*)0), 1);

  git_object_free(obj);

  if (!g_typechange_empty[i]) {
   cl_assert(git_path_isdir("typechanges"));
   cl_assert(git_path_exists("typechanges/a"));
   cl_assert(git_path_exists("typechanges/b"));
   cl_assert(git_path_exists("typechanges/c"));
   cl_assert(git_path_exists("typechanges/d"));
   cl_assert(git_path_exists("typechanges/e"));
  } else {
   cl_assert(git_path_isdir("typechanges"));
   cl_assert(!git_path_exists("typechanges/a"));
   cl_assert(!git_path_exists("typechanges/b"));
   cl_assert(!git_path_exists("typechanges/c"));
   cl_assert(!git_path_exists("typechanges/d"));
   cl_assert(!git_path_exists("typechanges/e"));
  }
 }
}
