
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flat_binder_object {int dummy; } ;
struct binder_proc {int dummy; } ;
struct binder_node {int dummy; } ;


 int GFP_KERNEL ;
 struct binder_node* binder_init_node_ilocked (struct binder_proc*,struct binder_node*,struct flat_binder_object*) ;
 int binder_inner_proc_lock (struct binder_proc*) ;
 int binder_inner_proc_unlock (struct binder_proc*) ;
 int kfree (struct binder_node*) ;
 struct binder_node* kzalloc (int,int ) ;

__attribute__((used)) static struct binder_node *binder_new_node(struct binder_proc *proc,
        struct flat_binder_object *fp)
{
 struct binder_node *node;
 struct binder_node *new_node = kzalloc(sizeof(*node), GFP_KERNEL);

 if (!new_node)
  return ((void*)0);
 binder_inner_proc_lock(proc);
 node = binder_init_node_ilocked(proc, new_node, fp);
 binder_inner_proc_unlock(proc);
 if (node != new_node)



  kfree(new_node);

 return node;
}
