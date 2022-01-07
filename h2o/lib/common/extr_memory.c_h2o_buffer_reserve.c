
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * base; } ;
typedef TYPE_1__ h2o_iovec_t ;
struct TYPE_8__ {int capacity; } ;
typedef TYPE_2__ h2o_buffer_t ;


 TYPE_1__ h2o_buffer_try_reserve (TYPE_2__**,size_t) ;
 int h2o_fatal (char*,int ,size_t) ;

h2o_iovec_t h2o_buffer_reserve(h2o_buffer_t **_inbuf, size_t min_guarantee)
{
    h2o_iovec_t reserved = h2o_buffer_try_reserve(_inbuf, min_guarantee);
    if (reserved.base == ((void*)0)) {
        h2o_fatal("failed to reserve buffer; capacity: %zu, min_gurantee: %zu", (*_inbuf)->capacity, min_guarantee);
    }
    return reserved;
}
