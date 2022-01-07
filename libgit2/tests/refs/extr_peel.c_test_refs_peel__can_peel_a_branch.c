
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_OBJECT_COMMIT ;
 int GIT_OBJECT_TREE ;
 int assert_peel (char*,int ,char*,int ) ;

void test_refs_peel__can_peel_a_branch(void)
{
 assert_peel("refs/heads/master", GIT_OBJECT_COMMIT,
  "a65fedf39aefe402d3bb6e24df4d4f5fe4547750", GIT_OBJECT_COMMIT);
 assert_peel("refs/heads/master", GIT_OBJECT_TREE,
  "944c0f6e4dfa41595e6eb3ceecdb14f50fe18162", GIT_OBJECT_TREE);
}
