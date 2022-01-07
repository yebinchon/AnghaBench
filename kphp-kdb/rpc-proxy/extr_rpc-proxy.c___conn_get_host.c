
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_cluster_bucket {TYPE_1__* T; } ;
struct TYPE_2__ {int custom_field; } ;



unsigned __conn_get_host (struct rpc_cluster_bucket *B) {
  return B->T->custom_field;
}
