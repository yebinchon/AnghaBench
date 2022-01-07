
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_git_fail (int ) ;
 int git_repository_set_head (int ,char*) ;
 int repo ;

void test_repo_head__set_head_Fails_when_the_reference_points_to_a_non_commitish(void)
{
 cl_git_fail(git_repository_set_head(repo, "refs/tags/point_to_blob"));
}
