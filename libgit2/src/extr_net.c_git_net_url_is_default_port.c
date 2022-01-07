
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int scheme; int port; } ;
typedef TYPE_1__ git_net_url ;


 int default_port_for_scheme (int ) ;
 scalar_t__ strcmp (int ,int ) ;

int git_net_url_is_default_port(git_net_url *url)
{
 return (strcmp(url->port, default_port_for_scheme(url->scheme)) == 0);
}
