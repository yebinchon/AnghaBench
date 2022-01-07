
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_tree ;
typedef int git_index ;


 int check_index_range (int ,char*,char*,int,int) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int g_repo ;
 int git_index_free (int *) ;
 int git_index_read_tree (int *,int *) ;
 int git_index_write (int *) ;
 int git_repository_head_tree (int **,int ) ;
 int git_repository_index (int **,int ) ;
 int git_tree_free (int *) ;

void test_iterator_index__range_icase(void)
{
 git_index *index;
 git_tree *head;

 g_repo = cl_git_sandbox_init("testrepo");


 cl_git_pass(git_repository_head_tree(&head, g_repo));
 cl_git_pass(git_repository_index(&index, g_repo));
 cl_git_pass(git_index_read_tree(index, head));
 cl_git_pass(git_index_write(index));
 git_tree_free(head);
 git_index_free(index);


 check_index_range(g_repo, "B", "C", 0, 0);
 check_index_range(g_repo, "B", "C", 1, 1);
 check_index_range(g_repo, "a", "z", 0, 3);
 check_index_range(g_repo, "a", "z", 1, 4);
}
