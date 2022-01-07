
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct connection {int dummy; } ;
struct TYPE_2__ {int out_packet_num; } ;


 TYPE_1__* RPCS_DATA (struct connection*) ;
 int prepare_rpc_query_raw (int ,int*,int) ;

void prepare_rpc_query (struct connection *c, int *q, int qn) {
  prepare_rpc_query_raw (RPCS_DATA(c)->out_packet_num++, q, qn);
}
