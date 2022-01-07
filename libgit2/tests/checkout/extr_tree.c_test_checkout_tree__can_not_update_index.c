
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_oid ;
typedef int git_object ;
typedef int git_index ;
struct TYPE_4__ {int checkout_strategy; } ;
typedef TYPE_1__ git_checkout_options ;


 int GIT_CHECKOUT_DONT_UPDATE_INDEX ;
 int GIT_CHECKOUT_FORCE ;
 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ;
 int GIT_OBJECT_ANY ;
 int GIT_RESET_HARD ;
 int GIT_STATUS_WT_NEW ;
 int cl_assert_equal_i (int,unsigned int) ;
 int cl_git_pass (int ) ;
 int g_object ;
 int g_opts ;
 int g_repo ;
 int git_checkout_tree (int ,int ,TYPE_1__*) ;
 int git_index_free (int *) ;
 int git_index_write (int *) ;
 int git_object_free (int *) ;
 int git_object_lookup (int **,int ,int *,int ) ;
 unsigned int git_path_isdir (char*) ;
 unsigned int git_path_isfile (char*) ;
 int git_reference_name_to_id (int *,int ,char*) ;
 int git_repository_index (int **,int ) ;
 int git_reset (int ,int *,int ,int *) ;
 int git_revparse_single (int *,int ,char*) ;
 int git_status_file (unsigned int*,int ,char*) ;

void test_checkout_tree__can_not_update_index(void)
{
 git_oid oid;
 git_object *head;
 unsigned int status;
 git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;
 git_index *index;

 opts.checkout_strategy |=
  GIT_CHECKOUT_FORCE | GIT_CHECKOUT_DONT_UPDATE_INDEX;

 cl_git_pass(git_reference_name_to_id(&oid, g_repo, "HEAD"));
 cl_git_pass(git_object_lookup(&head, g_repo, &oid, GIT_OBJECT_ANY));

 cl_git_pass(git_reset(g_repo, head, GIT_RESET_HARD, &g_opts));

 cl_assert_equal_i(0, git_path_isdir("./testrepo/ab/"));

 cl_git_pass(git_revparse_single(&g_object, g_repo, "subtrees"));

 cl_git_pass(git_checkout_tree(g_repo, g_object, &opts));

 cl_assert_equal_i(1, git_path_isfile("./testrepo/ab/de/2.txt"));
 cl_git_pass(git_status_file(&status, g_repo, "ab/de/2.txt"));
 cl_assert_equal_i(GIT_STATUS_WT_NEW, status);

 cl_git_pass(git_repository_index(&index, g_repo));
 cl_git_pass(git_index_write(index));

 cl_git_pass(git_status_file(&status, g_repo, "ab/de/2.txt"));
 cl_assert_equal_i(GIT_STATUS_WT_NEW, status);

 git_object_free(head);
 git_index_free(index);
}
