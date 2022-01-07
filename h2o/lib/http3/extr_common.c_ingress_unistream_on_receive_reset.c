
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int quicly_stream_t ;


 int H2O_HTTP3_ERROR_CLOSED_CRITICAL_STREAM ;

__attribute__((used)) static int ingress_unistream_on_receive_reset(quicly_stream_t *qs, int err)
{
    return H2O_HTTP3_ERROR_CLOSED_CRITICAL_STREAM;
}
