
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int child; } ;
typedef TYPE_1__ rtree_node_elm_t ;


 int ATOMIC_ACQUIRE ;
 int ATOMIC_RELAXED ;
 int assert (int) ;
 scalar_t__ atomic_load_p (int *,int ) ;

__attribute__((used)) static rtree_node_elm_t *
rtree_child_node_tryread(rtree_node_elm_t *elm, bool dependent) {
 rtree_node_elm_t *node;

 if (dependent) {
  node = (rtree_node_elm_t *)atomic_load_p(&elm->child,
      ATOMIC_RELAXED);
 } else {
  node = (rtree_node_elm_t *)atomic_load_p(&elm->child,
      ATOMIC_ACQUIRE);
 }

 assert(!dependent || node != ((void*)0));
 return node;
}
