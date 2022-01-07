
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* data; int len; int offset; } ;
typedef TYPE_1__ gitno_buffer ;


 int assert (int) ;
 int memmove (char const*,char const*,int) ;
 int memset (char const*,int,int) ;

void gitno_consume(gitno_buffer *buf, const char *ptr)
{
 size_t consumed;

 assert(ptr - buf->data >= 0);
 assert(ptr - buf->data <= (int) buf->len);

 consumed = ptr - buf->data;

 memmove(buf->data, ptr, buf->offset - consumed);
 memset(buf->data + buf->offset, 0x0, buf->len - buf->offset);
 buf->offset -= consumed;
}
