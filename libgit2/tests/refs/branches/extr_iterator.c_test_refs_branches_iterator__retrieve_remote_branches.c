
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_BRANCH_REMOTE ;
 int assert_retrieval (int ,int) ;

void test_refs_branches_iterator__retrieve_remote_branches(void)
{
 assert_retrieval(GIT_BRANCH_REMOTE, 2);
}
