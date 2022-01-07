
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* data; size_t len; int * cb_data; int recv; scalar_t__ offset; } ;
typedef TYPE_1__ gitno_buffer ;
typedef int git_stream ;


 int memset (char*,int,size_t) ;
 int recv_stream ;

void gitno_buffer_setup_fromstream(git_stream *st, gitno_buffer *buf, char *data, size_t len)
{
 memset(data, 0x0, len);
 buf->data = data;
 buf->len = len;
 buf->offset = 0;
 buf->recv = recv_stream;
 buf->cb_data = st;
}
