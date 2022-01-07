
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_valid_transform (char*,char*,char*) ;

void test_network_refspecs__no_dst(void)
{
 assert_valid_transform("refs/heads/master:", "refs/heads/master", "");
}
