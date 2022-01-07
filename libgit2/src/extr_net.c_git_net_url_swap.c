
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_net_url ;


 int GIT_NET_URL_INIT ;
 int memcpy (int *,int *,int) ;

void git_net_url_swap(git_net_url *a, git_net_url *b)
{
 git_net_url tmp = GIT_NET_URL_INIT;

 memcpy(&tmp, a, sizeof(git_net_url));
 memcpy(a, b, sizeof(git_net_url));
 memcpy(b, &tmp, sizeof(git_net_url));
}
