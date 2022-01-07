
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int quicly_stream_t ;



int quicly_stream_noop_on_send_stop(quicly_stream_t *stream, int err)
{
    return 0;
}
