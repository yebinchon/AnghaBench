
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct rpc_cluster_bucket {int dummy; } ;
struct TYPE_6__ {int (* forward_target ) (struct rpc_cluster_bucket*,long long) ;} ;
struct TYPE_8__ {TYPE_2__ methods; } ;
struct TYPE_7__ {TYPE_1__* h; } ;
struct TYPE_5__ {int qid; } ;


 TYPE_4__* CC ;
 TYPE_3__* CQ ;
 int assert (int (*) (struct rpc_cluster_bucket*,long long)) ;
 long long get_free_rpc_qid (int ) ;
 int stub1 (struct rpc_cluster_bucket*,long long) ;

int query_forward (struct rpc_cluster_bucket B) {
  assert (CC->methods.forward_target);
  long long new_qid = get_free_rpc_qid (CQ->h->qid);
  return CC->methods.forward_target (&B, new_qid);
}
