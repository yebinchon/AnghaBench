
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct st_h2o_http3_ingress_unistream_t {int dummy; } ;
typedef int h2o_http3_conn_t ;



__attribute__((used)) static int unknown_stream_type_handle_input(h2o_http3_conn_t *conn, struct st_h2o_http3_ingress_unistream_t *stream,
                                            const uint8_t **src, const uint8_t *src_end, const char **err_desc)
{

    *src = src_end;
    return 0;
}
