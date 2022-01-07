
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_mergebase_many (int *,int,char*,char*,char*) ;

void test_revwalk_mergebase__many_no_common_ancestor_returns_ENOTFOUND(void)
{
 assert_mergebase_many(((void*)0), 3, "41bc8c", "e90810", "a65fed");
 assert_mergebase_many(((void*)0), 3, "e90810", "41bc8c", "a65fed");
 assert_mergebase_many(((void*)0), 3, "e90810", "a65fed", "41bc8c");
 assert_mergebase_many(((void*)0), 3, "a65fed", "e90810", "41bc8c");
 assert_mergebase_many(((void*)0), 3, "a65fed", "41bc8c", "e90810");

 assert_mergebase_many(((void*)0), 3, "e90810", "763d71", "a65fed");
}
