
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ sslkey; scalar_t__ sslcert; scalar_t__ port; scalar_t__ origin; scalar_t__ fifo_out; scalar_t__ fifo_in; scalar_t__ addr; } ;


 TYPE_1__ conf ;
 int ws_set_config_host (scalar_t__) ;
 int ws_set_config_origin (scalar_t__) ;
 int ws_set_config_pipein (scalar_t__) ;
 int ws_set_config_pipeout (scalar_t__) ;
 int ws_set_config_port (scalar_t__) ;
 int ws_set_config_sslcert (scalar_t__) ;
 int ws_set_config_sslkey (scalar_t__) ;
 int ws_set_config_strict (int) ;

__attribute__((used)) static void
set_ws_opts (void)
{
  ws_set_config_strict (1);
  if (conf.addr)
    ws_set_config_host (conf.addr);
  if (conf.fifo_in)
    ws_set_config_pipein (conf.fifo_in);
  if (conf.fifo_out)
    ws_set_config_pipeout (conf.fifo_out);
  if (conf.origin)
    ws_set_config_origin (conf.origin);
  if (conf.port)
    ws_set_config_port (conf.port);
  if (conf.sslcert)
    ws_set_config_sslcert (conf.sslcert);
  if (conf.sslkey)
    ws_set_config_sslkey (conf.sslkey);
}
