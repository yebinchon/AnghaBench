
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t size; scalar_t__ bytes; } ;
typedef TYPE_1__ h2o_buffer_t ;


 int h2o_buffer_reserve (TYPE_1__**,size_t) ;
 int memcpy (scalar_t__,void const*,size_t) ;

int h2o_http3_update_recvbuf(h2o_buffer_t **buf, size_t off, const void *src, size_t len)
{
    size_t new_size = off + len;

    if ((*buf)->size < new_size) {
        h2o_buffer_reserve(buf, new_size - (*buf)->size);
        (*buf)->size = new_size;
    }

    memcpy((*buf)->bytes + off, src, len);
    return 0;
}
