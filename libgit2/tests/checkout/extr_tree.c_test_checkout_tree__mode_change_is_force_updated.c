
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reference ;
typedef int git_object ;
typedef int git_index ;


 int GIT_OBJECT_COMMIT ;
 int GIT_RESET_HARD ;
 int assert_on_branch (int ,char*) ;
 int assert_status_entrycount (int ,int) ;
 int cl_git_pass (int ) ;
 int cl_is_chmod_supported () ;
 int cl_must_pass (int ) ;
 int clar__skip () ;
 int g_opts ;
 int g_repo ;
 int git_checkout_tree (int ,int *,int *) ;
 int git_index_add_bypath (int *,char*) ;
 int git_index_free (int *) ;
 int git_index_write (int *) ;
 int git_object_free (int *) ;
 int git_reference_free (int *) ;
 int git_reference_peel (int **,int *,int ) ;
 int git_repository_head (int **,int ) ;
 int git_repository_index (int **,int ) ;
 int git_reset (int ,int *,int ,int *) ;
 int p_chmod (char*,int) ;

void test_checkout_tree__mode_change_is_force_updated(void)
{
 git_index *index;
 git_reference *head;
 git_object *obj;

 if (!cl_is_chmod_supported())
  clar__skip();

 assert_on_branch(g_repo, "master");
 cl_git_pass(git_repository_index(&index, g_repo));
 cl_git_pass(git_repository_head(&head, g_repo));
 cl_git_pass(git_reference_peel(&obj, head, GIT_OBJECT_COMMIT));

 cl_git_pass(git_reset(g_repo, obj, GIT_RESET_HARD, ((void*)0)));
 assert_status_entrycount(g_repo, 0);


 cl_must_pass(p_chmod("testrepo/README", 0755));

 assert_status_entrycount(g_repo, 1);
 cl_git_pass(git_checkout_tree(g_repo, obj, &g_opts));
 assert_status_entrycount(g_repo, 0);


 cl_must_pass(p_chmod("testrepo/README", 0755));
 cl_must_pass(git_index_add_bypath(index, "README"));

 cl_git_pass(git_index_write(index));
 assert_status_entrycount(g_repo, 1);

 cl_git_pass(git_checkout_tree(g_repo, obj, &g_opts));
 cl_git_pass(git_index_write(index));

 assert_status_entrycount(g_repo, 0);

 git_object_free(obj);
 git_reference_free(head);
 git_index_free(index);
}
