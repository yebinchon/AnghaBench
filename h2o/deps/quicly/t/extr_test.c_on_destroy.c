
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int is_detached; } ;
typedef TYPE_1__ test_streambuf_t ;
struct TYPE_5__ {TYPE_1__* data; } ;
typedef TYPE_2__ quicly_stream_t ;


 int on_destroy_callcnt ;

void on_destroy(quicly_stream_t *stream, int err)
{
    test_streambuf_t *sbuf = stream->data;
    sbuf->is_detached = 1;
    ++on_destroy_callcnt;
}
