
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FETCH_HEAD_EXPLICIT_DATA ;
 int fetchhead_test_clone () ;
 int fetchhead_test_fetch (char*,int ) ;

void test_online_fetchhead__explicit_spec(void)
{
 fetchhead_test_clone();
 fetchhead_test_fetch("refs/heads/first-merge:refs/remotes/origin/first-merge", FETCH_HEAD_EXPLICIT_DATA);
}
