
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_cluster_bucket {TYPE_1__* S; } ;
struct TYPE_2__ {int ip; } ;



unsigned __udp_get_host (struct rpc_cluster_bucket *B) {
  return B->S->ip;
}
