
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_strarray ;
struct TYPE_3__ {int const* custom_headers; int const* proxy; } ;
typedef TYPE_1__ git_remote_connection_opts ;
typedef int git_remote_callbacks ;
typedef int git_remote ;
typedef int git_proxy_options ;
typedef int git_direction ;


 int git_remote__connect (int *,int ,int const*,TYPE_1__*) ;

int git_remote_connect(git_remote *remote, git_direction direction, const git_remote_callbacks *callbacks, const git_proxy_options *proxy, const git_strarray *custom_headers)
{
 git_remote_connection_opts conn;

 conn.proxy = proxy;
 conn.custom_headers = custom_headers;

 return git_remote__connect(remote, direction, callbacks, &conn);
}
