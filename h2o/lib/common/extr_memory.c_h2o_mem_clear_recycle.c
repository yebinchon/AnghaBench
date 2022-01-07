
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct st_h2o_mem_recycle_chunk_t {struct st_h2o_mem_recycle_chunk_t* next; } ;
struct TYPE_3__ {struct st_h2o_mem_recycle_chunk_t* _link; int cnt; } ;
typedef TYPE_1__ h2o_mem_recycle_t ;


 int free (struct st_h2o_mem_recycle_chunk_t*) ;

void h2o_mem_clear_recycle(h2o_mem_recycle_t *allocator)
{
    struct st_h2o_mem_recycle_chunk_t *chunk;

    while (allocator->cnt-- > 0) {
        chunk = allocator->_link;
        allocator->_link = allocator->_link->next;
        free(chunk);
    }
}
