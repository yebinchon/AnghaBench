
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bt; } ;
typedef TYPE_1__ prof_bt_node_t ;


 int prof_bt_hash (void*,size_t*) ;

__attribute__((used)) static void
prof_bt_node_hash(const void *key, size_t r_hash[2]) {
 const prof_bt_node_t *bt_node = (prof_bt_node_t *)key;
 prof_bt_hash((void *)(&bt_node->bt), r_hash);
}
