
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int allocator; } ;
struct TYPE_3__ {int allocator; } ;


 TYPE_2__ h2o_http2_wbuf_buffer_prototype ;
 int h2o_mem_clear_recycle (int *) ;
 int h2o_mem_pool_allocator ;
 TYPE_1__ h2o_socket_buffer_prototype ;

void h2o_cleanup_thread(void)
{
    h2o_mem_clear_recycle(&h2o_mem_pool_allocator);
    h2o_mem_clear_recycle(&h2o_http2_wbuf_buffer_prototype.allocator);
    h2o_mem_clear_recycle(&h2o_socket_buffer_prototype.allocator);
}
