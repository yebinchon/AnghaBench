
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct blkcg_gq {int refcnt; int stat_bytes; int stat_ios; scalar_t__* pd; } ;
struct TYPE_2__ {int (* pd_free_fn ) (scalar_t__) ;} ;


 int BLKCG_MAX_POLS ;
 TYPE_1__** blkcg_policy ;
 int blkg_rwstat_exit (int *) ;
 int kfree (struct blkcg_gq*) ;
 int percpu_ref_exit (int *) ;
 int stub1 (scalar_t__) ;

__attribute__((used)) static void blkg_free(struct blkcg_gq *blkg)
{
 int i;

 if (!blkg)
  return;

 for (i = 0; i < BLKCG_MAX_POLS; i++)
  if (blkg->pd[i])
   blkcg_policy[i]->pd_free_fn(blkg->pd[i]);

 blkg_rwstat_exit(&blkg->stat_ios);
 blkg_rwstat_exit(&blkg->stat_bytes);
 percpu_ref_exit(&blkg->refcnt);
 kfree(blkg);
}
