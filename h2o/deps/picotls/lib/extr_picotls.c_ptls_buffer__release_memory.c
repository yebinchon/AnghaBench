
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int base; scalar_t__ is_allocated; int off; } ;
typedef TYPE_1__ ptls_buffer_t ;


 int free (int ) ;
 int ptls_clear_memory (int ,int ) ;

void ptls_buffer__release_memory(ptls_buffer_t *buf)
{
    ptls_clear_memory(buf->base, buf->off);
    if (buf->is_allocated)
        free(buf->base);
}
