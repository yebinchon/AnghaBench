
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct binder_ref {struct binder_ref* death; scalar_t__ node; } ;


 int binder_free_node (scalar_t__) ;
 int kfree (struct binder_ref*) ;

__attribute__((used)) static void binder_free_ref(struct binder_ref *ref)
{
 if (ref->node)
  binder_free_node(ref->node);
 kfree(ref->death);
 kfree(ref);
}
