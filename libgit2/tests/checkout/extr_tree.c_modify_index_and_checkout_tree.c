
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reference ;
typedef int git_object ;
typedef int git_index ;
typedef int git_checkout_options ;


 int GIT_OBJECT_COMMIT ;
 int GIT_RESET_HARD ;
 int assert_status_entrycount (int ,int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_checkout_tree (int ,int *,int *) ;
 int git_index_free (int *) ;
 int git_object_free (int *) ;
 int git_reference_free (int *) ;
 int git_reference_peel (int **,int *,int ) ;
 int git_repository_head (int **,int ) ;
 int git_repository_index (int **,int ) ;
 int git_reset (int ,int *,int ,int *) ;
 int modify_index_ondisk () ;

__attribute__((used)) static void modify_index_and_checkout_tree(git_checkout_options *opts)
{
 git_index *index;
 git_reference *head;
 git_object *obj;


 cl_git_pass(git_repository_index(&index, g_repo));
 cl_git_pass(git_repository_head(&head, g_repo));
 cl_git_pass(git_reference_peel(&obj, head, GIT_OBJECT_COMMIT));

 cl_git_pass(git_reset(g_repo, obj, GIT_RESET_HARD, ((void*)0)));
 assert_status_entrycount(g_repo, 0);

 modify_index_ondisk();


 cl_git_pass(git_checkout_tree(g_repo, obj, opts));

 git_object_free(obj);
 git_reference_free(head);
 git_index_free(index);
}
