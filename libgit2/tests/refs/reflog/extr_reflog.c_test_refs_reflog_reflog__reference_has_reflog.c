
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_has_reflog (int,char*) ;

void test_refs_reflog_reflog__reference_has_reflog(void)
{
 assert_has_reflog(1, "HEAD");
 assert_has_reflog(1, "refs/heads/master");
 assert_has_reflog(0, "refs/heads/subtrees");
}
