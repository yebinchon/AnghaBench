
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ offset; scalar_t__ len; scalar_t__ data; } ;
typedef TYPE_1__ gitno_buffer ;


 int memmove (scalar_t__,scalar_t__,scalar_t__) ;
 int memset (scalar_t__,int,scalar_t__) ;

void gitno_consume_n(gitno_buffer *buf, size_t cons)
{
 memmove(buf->data, buf->data + cons, buf->len - buf->offset);
 memset(buf->data + cons, 0x0, buf->len - buf->offset);
 buf->offset -= cons;
}
