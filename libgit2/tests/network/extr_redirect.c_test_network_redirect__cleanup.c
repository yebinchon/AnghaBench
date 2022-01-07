
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int conndata ;
 int git_net_url_dispose (int *) ;

void test_network_redirect__cleanup(void)
{
 git_net_url_dispose(&conndata);
}
