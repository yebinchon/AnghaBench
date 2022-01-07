
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct rpc_cluster_bucket {scalar_t__ RT; TYPE_1__* T; } ;
struct TYPE_3__ {int custom_field; } ;


 void* rpc_target_choose_connection (scalar_t__,int ) ;
 int rpc_target_insert_target_ext (TYPE_1__*,int) ;
 scalar_t__ rpc_target_lookup_target (TYPE_1__*) ;

void *__conn_get_conn (struct rpc_cluster_bucket *B) {
  if (!B->RT) {
    if (B->T->custom_field != -1) {
      rpc_target_insert_target_ext (B->T, B->T->custom_field);
      B->RT = rpc_target_lookup_target (B->T);
    } else {
      return 0;
    }
  }
  return rpc_target_choose_connection (B->RT, 0);
}
