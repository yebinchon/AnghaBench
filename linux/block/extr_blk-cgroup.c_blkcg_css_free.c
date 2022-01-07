
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cgroup_subsys_state {int dummy; } ;
struct blkcg {scalar_t__* cpd; int all_blkcgs_node; } ;
struct TYPE_2__ {int (* cpd_free_fn ) (scalar_t__) ;} ;


 int BLKCG_MAX_POLS ;
 int blkcg_pol_mutex ;
 TYPE_1__** blkcg_policy ;
 struct blkcg* css_to_blkcg (struct cgroup_subsys_state*) ;
 int kfree (struct blkcg*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (scalar_t__) ;

__attribute__((used)) static void blkcg_css_free(struct cgroup_subsys_state *css)
{
 struct blkcg *blkcg = css_to_blkcg(css);
 int i;

 mutex_lock(&blkcg_pol_mutex);

 list_del(&blkcg->all_blkcgs_node);

 for (i = 0; i < BLKCG_MAX_POLS; i++)
  if (blkcg->cpd[i])
   blkcg_policy[i]->cpd_free_fn(blkcg->cpd[i]);

 mutex_unlock(&blkcg_pol_mutex);

 kfree(blkcg);
}
