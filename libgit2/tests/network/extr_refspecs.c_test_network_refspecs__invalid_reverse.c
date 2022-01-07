
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_invalid_rtransform (char*,char*) ;

void test_network_refspecs__invalid_reverse(void)
{
 assert_invalid_rtransform("refs/heads/*:refs/remotes/origin/*", "master");
 assert_invalid_rtransform("refs/heads/*:refs/remotes/origin/*", "refs/remotes/o/master");
}
