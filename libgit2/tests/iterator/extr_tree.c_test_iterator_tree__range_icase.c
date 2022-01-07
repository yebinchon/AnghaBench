
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int check_tree_range (int ,char*,char*,int,int) ;
 int cl_git_sandbox_init (char*) ;
 int g_repo ;

void test_iterator_tree__range_icase(void)
{
 g_repo = cl_git_sandbox_init("testrepo");

 check_tree_range(g_repo, "B", "C", 0, 0);
 check_tree_range(g_repo, "B", "C", 1, 1);
 check_tree_range(g_repo, "b", "c", 0, 1);
 check_tree_range(g_repo, "b", "c", 1, 1);

 check_tree_range(g_repo, "a", "z", 0, 3);
 check_tree_range(g_repo, "a", "z", 1, 4);
 check_tree_range(g_repo, "A", "Z", 0, 1);
 check_tree_range(g_repo, "A", "Z", 1, 4);
 check_tree_range(g_repo, "a", "Z", 0, 0);
 check_tree_range(g_repo, "a", "Z", 1, 4);
 check_tree_range(g_repo, "A", "z", 0, 4);
 check_tree_range(g_repo, "A", "z", 1, 4);

 check_tree_range(g_repo, "new.txt", "new.txt", 1, 1);
 check_tree_range(g_repo, "new.txt", "new.txt", 0, 1);
 check_tree_range(g_repo, "README", "README", 1, 1);
 check_tree_range(g_repo, "README", "README", 0, 1);
}
