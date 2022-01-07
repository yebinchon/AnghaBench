
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* data; size_t len; int (* recv ) (TYPE_1__*) ;void* cb_data; scalar_t__ offset; } ;
typedef TYPE_1__ gitno_buffer ;


 int memset (char*,int,size_t) ;

void gitno_buffer_setup_callback(
 gitno_buffer *buf,
 char *data,
 size_t len,
 int (*recv)(gitno_buffer *buf), void *cb_data)
{
 memset(data, 0x0, len);
 buf->data = data;
 buf->len = len;
 buf->offset = 0;
 buf->recv = recv;
 buf->cb_data = cb_data;
}
