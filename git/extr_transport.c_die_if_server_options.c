
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct transport {TYPE_1__* server_options; } ;
struct TYPE_2__ {int nr; } ;


 int _ (char*) ;
 int advise (int ) ;
 int die (int ) ;

__attribute__((used)) static void die_if_server_options(struct transport *transport)
{
 if (!transport->server_options || !transport->server_options->nr)
  return;
 advise(_("see protocol.version in 'git help config' for more details"));
 die(_("server options require protocol version 2 or later"));
}
