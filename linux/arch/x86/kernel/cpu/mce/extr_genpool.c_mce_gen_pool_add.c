
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mce_evt_llist {int llnode; int mce; } ;
struct mce {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 scalar_t__ filter_mce (struct mce*) ;
 scalar_t__ gen_pool_alloc (int ,int) ;
 int llist_add (int *,int *) ;
 int mce_event_llist ;
 int mce_evt_pool ;
 int memcpy (int *,struct mce*,int) ;
 int pr_warn_ratelimited (char*) ;

int mce_gen_pool_add(struct mce *mce)
{
 struct mce_evt_llist *node;

 if (filter_mce(mce))
  return -EINVAL;

 if (!mce_evt_pool)
  return -EINVAL;

 node = (void *)gen_pool_alloc(mce_evt_pool, sizeof(*node));
 if (!node) {
  pr_warn_ratelimited("MCE records pool full!\n");
  return -ENOMEM;
 }

 memcpy(&node->mce, mce, sizeof(*mce));
 llist_add(&node->llnode, &mce_event_llist);

 return 0;
}
