
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct binder_proc {int dummy; } ;
struct binder_node {int dummy; } ;
typedef int binder_uintptr_t ;


 struct binder_node* binder_get_node_ilocked (struct binder_proc*,int ) ;
 int binder_inner_proc_lock (struct binder_proc*) ;
 int binder_inner_proc_unlock (struct binder_proc*) ;

__attribute__((used)) static struct binder_node *binder_get_node(struct binder_proc *proc,
        binder_uintptr_t ptr)
{
 struct binder_node *node;

 binder_inner_proc_lock(proc);
 node = binder_get_node_ilocked(proc, ptr);
 binder_inner_proc_unlock(proc);
 return node;
}
