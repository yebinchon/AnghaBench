
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FETCH_HEAD_EXPLICIT_DATA ;
 int cl_assert_equal_i (size_t,size_t) ;
 size_t count_references () ;
 int fetchhead_test_clone () ;
 int fetchhead_test_fetch (char*,int ) ;

void test_online_fetchhead__colon_only_dst_refspec_creates_no_branch(void)
{
 size_t refs;

 fetchhead_test_clone();
 refs = count_references();
 fetchhead_test_fetch("refs/heads/first-merge:", FETCH_HEAD_EXPLICIT_DATA);

 cl_assert_equal_i(refs, count_references());
}
