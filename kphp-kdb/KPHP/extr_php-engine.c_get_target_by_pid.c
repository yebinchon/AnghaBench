
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct conn_target {int port; TYPE_1__ target; } ;


 int get_target_impl (struct conn_target*) ;
 int htonl (int) ;

int get_target_by_pid (int ip, int port, struct conn_target *ct) {
  ct->target.s_addr = htonl (ip);
  ct->port = port;

  return get_target_impl (ct);
}
