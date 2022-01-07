
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_net_url ;
typedef int git_http_auth_context ;


 int GIT_PASSTHROUGH ;
 int GIT_UNUSED (int const*) ;

int git_http_auth_dummy(
 git_http_auth_context **out, const git_net_url *url)
{
 GIT_UNUSED(url);

 *out = ((void*)0);
 return GIT_PASSTHROUGH;
}
