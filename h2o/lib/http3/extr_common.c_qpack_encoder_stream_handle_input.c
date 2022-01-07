
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct st_h2o_http3_ingress_unistream_t {int dummy; } ;
typedef int int64_t ;
struct TYPE_4__ {int dec; } ;
struct TYPE_5__ {TYPE_1__ qpack; } ;
typedef TYPE_2__ h2o_http3_conn_t ;


 int h2o_qpack_decoder_handle_input (int ,int **,size_t*,int const**,int const*,char const**) ;

__attribute__((used)) static int qpack_encoder_stream_handle_input(h2o_http3_conn_t *conn, struct st_h2o_http3_ingress_unistream_t *stream,
                                             const uint8_t **src, const uint8_t *src_end, const char **err_desc)
{
    while (*src != src_end) {
        int64_t *unblocked_stream_ids;
        size_t num_unblocked;
        int ret;
        if ((ret = h2o_qpack_decoder_handle_input(conn->qpack.dec, &unblocked_stream_ids, &num_unblocked, src, src_end,
                                                  err_desc)) != 0)
            return ret;

    }
    return 0;
}
