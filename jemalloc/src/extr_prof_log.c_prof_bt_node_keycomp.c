
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bt; } ;
typedef TYPE_1__ prof_bt_node_t ;


 int prof_bt_keycomp (void*,void*) ;

__attribute__((used)) static bool
prof_bt_node_keycomp(const void *k1, const void *k2) {
 const prof_bt_node_t *bt_node1 = (prof_bt_node_t *)k1;
 const prof_bt_node_t *bt_node2 = (prof_bt_node_t *)k2;
 return prof_bt_keycomp((void *)(&bt_node1->bt),
     (void *)(&bt_node2->bt));
}
