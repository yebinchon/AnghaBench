
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t capacity; size_t size; void* entries; } ;
typedef TYPE_1__ h2o_vector_t ;
typedef int h2o_mem_pool_t ;


 int assert (int) ;
 void* h2o_mem_alloc_pool_aligned (int *,size_t,size_t) ;
 void* h2o_mem_realloc (void*,size_t) ;
 int h2o_memcpy (void*,void*,size_t) ;

void h2o_vector__expand(h2o_mem_pool_t *pool, h2o_vector_t *vector, size_t alignment, size_t element_size, size_t new_capacity)
{
    void *new_entries;
    assert(vector->capacity < new_capacity);
    if (vector->capacity == 0)
        vector->capacity = 4;
    while (vector->capacity < new_capacity)
        vector->capacity *= 2;
    if (pool != ((void*)0)) {
        new_entries = h2o_mem_alloc_pool_aligned(pool, alignment, element_size * vector->capacity);
        h2o_memcpy(new_entries, vector->entries, element_size * vector->size);
    } else {
        new_entries = h2o_mem_realloc(vector->entries, element_size * vector->capacity);
    }
    vector->entries = new_entries;
}
