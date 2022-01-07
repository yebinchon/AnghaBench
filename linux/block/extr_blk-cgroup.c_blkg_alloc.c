
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int node; } ;
struct blkg_policy_data {int plid; struct blkcg_gq* blkg; } ;
struct blkcg_policy {struct blkg_policy_data* (* pd_alloc_fn ) (int ,struct request_queue*,struct blkcg*) ;} ;
struct blkcg_gq {struct blkg_policy_data** pd; struct blkcg* blkcg; int async_bio_work; int async_bios; int async_bio_lock; int q_node; struct request_queue* q; int stat_ios; int stat_bytes; int refcnt; } ;
struct blkcg {int dummy; } ;
typedef int gfp_t ;


 int BLKCG_MAX_POLS ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int bio_list_init (int *) ;
 struct blkcg_policy** blkcg_policy ;
 int blkcg_policy_enabled (struct request_queue*,struct blkcg_policy*) ;
 int blkg_async_bio_workfn ;
 int blkg_free (struct blkcg_gq*) ;
 int blkg_release ;
 scalar_t__ blkg_rwstat_init (int *,int ) ;
 struct blkcg_gq* kzalloc_node (int,int ,int ) ;
 scalar_t__ percpu_ref_init (int *,int ,int ,int ) ;
 int spin_lock_init (int *) ;
 struct blkg_policy_data* stub1 (int ,struct request_queue*,struct blkcg*) ;

__attribute__((used)) static struct blkcg_gq *blkg_alloc(struct blkcg *blkcg, struct request_queue *q,
       gfp_t gfp_mask)
{
 struct blkcg_gq *blkg;
 int i;


 blkg = kzalloc_node(sizeof(*blkg), gfp_mask, q->node);
 if (!blkg)
  return ((void*)0);

 if (percpu_ref_init(&blkg->refcnt, blkg_release, 0, gfp_mask))
  goto err_free;

 if (blkg_rwstat_init(&blkg->stat_bytes, gfp_mask) ||
     blkg_rwstat_init(&blkg->stat_ios, gfp_mask))
  goto err_free;

 blkg->q = q;
 INIT_LIST_HEAD(&blkg->q_node);
 spin_lock_init(&blkg->async_bio_lock);
 bio_list_init(&blkg->async_bios);
 INIT_WORK(&blkg->async_bio_work, blkg_async_bio_workfn);
 blkg->blkcg = blkcg;

 for (i = 0; i < BLKCG_MAX_POLS; i++) {
  struct blkcg_policy *pol = blkcg_policy[i];
  struct blkg_policy_data *pd;

  if (!blkcg_policy_enabled(q, pol))
   continue;


  pd = pol->pd_alloc_fn(gfp_mask, q, blkcg);
  if (!pd)
   goto err_free;

  blkg->pd[i] = pd;
  pd->blkg = blkg;
  pd->plid = i;
 }

 return blkg;

err_free:
 blkg_free(blkg);
 return ((void*)0);
}
