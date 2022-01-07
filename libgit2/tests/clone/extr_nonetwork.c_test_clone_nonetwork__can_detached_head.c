
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_reference ;
typedef int git_object ;


 int cl_assert (int ) ;
 int cl_assert_equal_oid (int ,int ) ;
 int cl_fixture_cleanup (char*) ;
 char* cl_git_fixture_url (char*) ;
 int cl_git_pass (int ) ;
 int g_options ;
 int * g_repo ;
 int git_clone (int **,char*,char*,int *) ;
 int git_object_free (int *) ;
 int git_object_id (int *) ;
 int git_reference_free (int *) ;
 int git_reference_target (int *) ;
 int git_repository_free (int *) ;
 int git_repository_head (int **,int *) ;
 int git_repository_head_detached (int *) ;
 int git_repository_set_head_detached (int *,int ) ;
 int git_revparse_single (int **,int *,char*) ;

void test_clone_nonetwork__can_detached_head(void)
{
 git_object *obj;
 git_repository *cloned;
 git_reference *cloned_head;

 cl_git_pass(git_clone(&g_repo, cl_git_fixture_url("testrepo.git"), "./foo", &g_options));

 cl_git_pass(git_revparse_single(&obj, g_repo, "master~1"));
 cl_git_pass(git_repository_set_head_detached(g_repo, git_object_id(obj)));

 cl_git_pass(git_clone(&cloned, "./foo", "./foo1", &g_options));

 cl_assert(git_repository_head_detached(cloned));

 cl_git_pass(git_repository_head(&cloned_head, cloned));
 cl_assert_equal_oid(git_object_id(obj), git_reference_target(cloned_head));

 git_object_free(obj);
 git_reference_free(cloned_head);
 git_repository_free(cloned);

 cl_fixture_cleanup("./foo1");
}
