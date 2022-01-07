
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct conn_target {TYPE_1__ target; } ;


 int ntohl (int ) ;
 int rpc_target_insert_target_ext (struct conn_target*,int ) ;

void rpc_target_insert_target (struct conn_target *targ) {
  rpc_target_insert_target_ext (targ, ntohl (targ->target.s_addr));
}
