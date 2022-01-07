
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int ecma_value_t ;
struct TYPE_3__ {int * buffer_p; int capacity; scalar_t__ item_count; } ;
typedef TYPE_1__ ecma_collection_t ;


 int ECMA_COLLECTION_ALLOCATED_SIZE (int ) ;
 int ECMA_COLLECTION_INITIAL_CAPACITY ;
 scalar_t__ jmem_heap_alloc_block (int const) ;

ecma_collection_t *
ecma_new_collection (void)
{
  ecma_collection_t *collection_p;
  collection_p = (ecma_collection_t *) jmem_heap_alloc_block (sizeof (ecma_collection_t));

  collection_p->item_count = 0;
  collection_p->capacity = ECMA_COLLECTION_INITIAL_CAPACITY;
  const uint32_t size = ECMA_COLLECTION_ALLOCATED_SIZE (ECMA_COLLECTION_INITIAL_CAPACITY);
  collection_p->buffer_p = (ecma_value_t *) jmem_heap_alloc_block (size);

  return collection_p;
}
