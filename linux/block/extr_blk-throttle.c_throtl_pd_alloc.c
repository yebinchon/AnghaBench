
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blkg_policy_data {int dummy; } ;
struct throtl_grp {struct blkg_policy_data pd; void* idletime_threshold_conf; void* idletime_threshold; void* latency_target_conf; void* latency_target; void*** iops_conf; void*** bps_conf; void*** iops; void*** bps; int rb_node; int * qnode_on_parent; int * qnode_on_self; int service_queue; } ;
struct request_queue {int node; } ;
struct blkcg {int dummy; } ;
typedef int gfp_t ;


 void* DFL_IDLE_THRESHOLD ;
 void* DFL_LATENCY_TARGET ;
 size_t LIMIT_MAX ;
 int RB_CLEAR_NODE (int *) ;
 size_t READ ;
 void* U64_MAX ;
 void* UINT_MAX ;
 int WRITE ;
 struct throtl_grp* kzalloc_node (int,int ,int ) ;
 int throtl_qnode_init (int *,struct throtl_grp*) ;
 int throtl_service_queue_init (int *) ;

__attribute__((used)) static struct blkg_policy_data *throtl_pd_alloc(gfp_t gfp,
      struct request_queue *q,
      struct blkcg *blkcg)
{
 struct throtl_grp *tg;
 int rw;

 tg = kzalloc_node(sizeof(*tg), gfp, q->node);
 if (!tg)
  return ((void*)0);

 throtl_service_queue_init(&tg->service_queue);

 for (rw = READ; rw <= WRITE; rw++) {
  throtl_qnode_init(&tg->qnode_on_self[rw], tg);
  throtl_qnode_init(&tg->qnode_on_parent[rw], tg);
 }

 RB_CLEAR_NODE(&tg->rb_node);
 tg->bps[READ][LIMIT_MAX] = U64_MAX;
 tg->bps[WRITE][LIMIT_MAX] = U64_MAX;
 tg->iops[READ][LIMIT_MAX] = UINT_MAX;
 tg->iops[WRITE][LIMIT_MAX] = UINT_MAX;
 tg->bps_conf[READ][LIMIT_MAX] = U64_MAX;
 tg->bps_conf[WRITE][LIMIT_MAX] = U64_MAX;
 tg->iops_conf[READ][LIMIT_MAX] = UINT_MAX;
 tg->iops_conf[WRITE][LIMIT_MAX] = UINT_MAX;


 tg->latency_target = DFL_LATENCY_TARGET;
 tg->latency_target_conf = DFL_LATENCY_TARGET;
 tg->idletime_threshold = DFL_IDLE_THRESHOLD;
 tg->idletime_threshold_conf = DFL_IDLE_THRESHOLD;

 return &tg->pd;
}
