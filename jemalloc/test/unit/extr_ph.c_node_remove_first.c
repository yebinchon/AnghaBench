
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ magic; } ;
typedef TYPE_1__ node_t ;
typedef int heap_t ;


 TYPE_1__* heap_remove_first (int *) ;

__attribute__((used)) static node_t *
node_remove_first(heap_t *heap) {
 node_t *node = heap_remove_first(heap);
 node->magic = 0;
 return node;
}
