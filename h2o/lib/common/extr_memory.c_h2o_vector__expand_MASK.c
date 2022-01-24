#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {size_t capacity; size_t size; void* entries; } ;
typedef  TYPE_1__ h2o_vector_t ;
typedef  int /*<<< orphan*/  h2o_mem_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (int /*<<< orphan*/ *,size_t,size_t) ; 
 void* FUNC2 (void*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (void*,void*,size_t) ; 

void FUNC4(h2o_mem_pool_t *pool, h2o_vector_t *vector, size_t alignment, size_t element_size, size_t new_capacity)
{
    void *new_entries;
    FUNC0(vector->capacity < new_capacity);
    if (vector->capacity == 0)
        vector->capacity = 4;
    while (vector->capacity < new_capacity)
        vector->capacity *= 2;
    if (pool != NULL) {
        new_entries = FUNC1(pool, alignment, element_size * vector->capacity);
        FUNC3(new_entries, vector->entries, element_size * vector->size);
    } else {
        new_entries = FUNC2(vector->entries, element_size * vector->capacity);
    }
    vector->entries = new_entries;
}