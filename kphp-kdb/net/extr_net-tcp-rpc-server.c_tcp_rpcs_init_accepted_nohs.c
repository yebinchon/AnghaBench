
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct connection {int dummy; } ;
struct TYPE_4__ {int (* rpc_ready ) (struct connection*) ;} ;
struct TYPE_3__ {int crypto_flags; int in_packet_num; } ;


 TYPE_2__* TCP_RPCS_FUNC (struct connection*) ;
 TYPE_1__* TCP_RPC_DATA (struct connection*) ;
 int stub1 (struct connection*) ;

int tcp_rpcs_init_accepted_nohs (struct connection *c) {
  TCP_RPC_DATA(c)->crypto_flags = 512 + 1;
  TCP_RPC_DATA(c)->in_packet_num = -3;
  return TCP_RPCS_FUNC(c)->rpc_ready ? TCP_RPCS_FUNC(c)->rpc_ready (c) : 0;
}
