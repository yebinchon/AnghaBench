
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int h2o_tunnel_t ;


 int close_connection (int *) ;

void h2o_tunnel_break(h2o_tunnel_t *tunnel)
{
    close_connection(tunnel);
}
