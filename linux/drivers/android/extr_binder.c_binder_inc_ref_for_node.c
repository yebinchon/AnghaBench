
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct binder_ref_data {int dummy; } ;
struct binder_ref {struct binder_ref_data data; } ;
struct binder_proc {int dummy; } ;
struct binder_node {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct binder_ref* binder_get_ref_for_node_olocked (struct binder_proc*,struct binder_node*,struct binder_ref*) ;
 int binder_inc_ref_olocked (struct binder_ref*,int,struct list_head*) ;
 int binder_proc_lock (struct binder_proc*) ;
 int binder_proc_unlock (struct binder_proc*) ;
 int kfree (struct binder_ref*) ;
 struct binder_ref* kzalloc (int,int ) ;

__attribute__((used)) static int binder_inc_ref_for_node(struct binder_proc *proc,
   struct binder_node *node,
   bool strong,
   struct list_head *target_list,
   struct binder_ref_data *rdata)
{
 struct binder_ref *ref;
 struct binder_ref *new_ref = ((void*)0);
 int ret = 0;

 binder_proc_lock(proc);
 ref = binder_get_ref_for_node_olocked(proc, node, ((void*)0));
 if (!ref) {
  binder_proc_unlock(proc);
  new_ref = kzalloc(sizeof(*ref), GFP_KERNEL);
  if (!new_ref)
   return -ENOMEM;
  binder_proc_lock(proc);
  ref = binder_get_ref_for_node_olocked(proc, node, new_ref);
 }
 ret = binder_inc_ref_olocked(ref, strong, target_list);
 *rdata = ref->data;
 binder_proc_unlock(proc);
 if (new_ref && ref != new_ref)




  kfree(new_ref);
 return ret;
}
