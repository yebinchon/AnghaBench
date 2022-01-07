
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup_subsys_state {int dummy; } ;
struct blkcg_policy_data {int plid; struct blkcg* blkcg; } ;
struct blkcg_policy {int (* cpd_free_fn ) (struct blkcg_policy_data*) ;int (* cpd_init_fn ) (struct blkcg_policy_data*) ;struct blkcg_policy_data* (* cpd_alloc_fn ) (int ) ;} ;
struct blkcg {struct blkcg_policy_data** cpd; struct cgroup_subsys_state css; int all_blkcgs_node; int cgwb_refcnt; int cgwb_list; int blkg_list; int blkg_tree; int lock; } ;


 int BLKCG_MAX_POLS ;
 int ENOMEM ;
 struct cgroup_subsys_state* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int GFP_NOWAIT ;
 int INIT_HLIST_HEAD (int *) ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_RADIX_TREE (int *,int) ;
 int __GFP_NOWARN ;
 int all_blkcgs ;
 int blkcg_pol_mutex ;
 struct blkcg_policy** blkcg_policy ;
 struct blkcg blkcg_root ;
 int kfree (struct blkcg*) ;
 struct blkcg* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int refcount_set (int *,int) ;
 int spin_lock_init (int *) ;
 struct blkcg_policy_data* stub1 (int ) ;
 int stub2 (struct blkcg_policy_data*) ;
 int stub3 (struct blkcg_policy_data*) ;

__attribute__((used)) static struct cgroup_subsys_state *
blkcg_css_alloc(struct cgroup_subsys_state *parent_css)
{
 struct blkcg *blkcg;
 struct cgroup_subsys_state *ret;
 int i;

 mutex_lock(&blkcg_pol_mutex);

 if (!parent_css) {
  blkcg = &blkcg_root;
 } else {
  blkcg = kzalloc(sizeof(*blkcg), GFP_KERNEL);
  if (!blkcg) {
   ret = ERR_PTR(-ENOMEM);
   goto unlock;
  }
 }

 for (i = 0; i < BLKCG_MAX_POLS ; i++) {
  struct blkcg_policy *pol = blkcg_policy[i];
  struct blkcg_policy_data *cpd;







  if (!pol || !pol->cpd_alloc_fn)
   continue;

  cpd = pol->cpd_alloc_fn(GFP_KERNEL);
  if (!cpd) {
   ret = ERR_PTR(-ENOMEM);
   goto free_pd_blkcg;
  }
  blkcg->cpd[i] = cpd;
  cpd->blkcg = blkcg;
  cpd->plid = i;
  if (pol->cpd_init_fn)
   pol->cpd_init_fn(cpd);
 }

 spin_lock_init(&blkcg->lock);
 INIT_RADIX_TREE(&blkcg->blkg_tree, GFP_NOWAIT | __GFP_NOWARN);
 INIT_HLIST_HEAD(&blkcg->blkg_list);




 list_add_tail(&blkcg->all_blkcgs_node, &all_blkcgs);

 mutex_unlock(&blkcg_pol_mutex);
 return &blkcg->css;

free_pd_blkcg:
 for (i--; i >= 0; i--)
  if (blkcg->cpd[i])
   blkcg_policy[i]->cpd_free_fn(blkcg->cpd[i]);

 if (blkcg != &blkcg_root)
  kfree(blkcg);
unlock:
 mutex_unlock(&blkcg_pol_mutex);
 return ret;
}
