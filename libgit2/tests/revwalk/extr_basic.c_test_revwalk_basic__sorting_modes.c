
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;


 int GIT_SORT_REVERSE ;
 int GIT_SORT_TIME ;
 int GIT_SORT_TOPOLOGICAL ;
 int _walk ;
 int cl_git_pass (int ) ;
 int commit_head ;
 int commit_sorting_time ;
 int commit_sorting_time_reverse ;
 int commit_sorting_topo ;
 int commit_sorting_topo_reverse ;
 int git_oid_fromstr (int *,int ) ;
 int revwalk_basic_setup_walk (int *) ;
 int test_walk (int ,int *,int,int ,int) ;

void test_revwalk_basic__sorting_modes(void)
{
 git_oid id;

 revwalk_basic_setup_walk(((void*)0));

 git_oid_fromstr(&id, commit_head);

 cl_git_pass(test_walk(_walk, &id, GIT_SORT_TIME, commit_sorting_time, 1));
 cl_git_pass(test_walk(_walk, &id, GIT_SORT_TOPOLOGICAL, commit_sorting_topo, 2));
 cl_git_pass(test_walk(_walk, &id, GIT_SORT_TIME | GIT_SORT_REVERSE, commit_sorting_time_reverse, 1));
 cl_git_pass(test_walk(_walk, &id, GIT_SORT_TOPOLOGICAL | GIT_SORT_REVERSE, commit_sorting_topo_reverse, 2));
}
