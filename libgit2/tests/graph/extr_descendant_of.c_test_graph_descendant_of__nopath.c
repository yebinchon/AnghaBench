
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;


 int _repo ;
 int cl_assert_equal_i (int ,int ) ;
 int commit ;
 int git_commit_id (int ) ;
 int git_graph_descendant_of (int ,int ,int *) ;
 int git_oid_fromstr (int *,char*) ;

void test_graph_descendant_of__nopath(void)
{
 git_oid oid;

 git_oid_fromstr(&oid, "e90810b8df3e80c413d903f631643c716887138d");
 cl_assert_equal_i(0, git_graph_descendant_of(_repo, git_commit_id(commit), &oid));
}
