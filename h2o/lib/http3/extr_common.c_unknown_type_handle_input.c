
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
struct st_h2o_http3_ingress_unistream_t {int (* handle_input ) (TYPE_3__*,struct st_h2o_http3_ingress_unistream_t*,int const**,int const*,char const**) ;int quic; } ;
struct TYPE_10__ {struct st_h2o_http3_ingress_unistream_t* qpack_decoder; struct st_h2o_http3_ingress_unistream_t* qpack_encoder; struct st_h2o_http3_ingress_unistream_t* control; } ;
struct TYPE_11__ {TYPE_1__ ingress; } ;
struct TYPE_12__ {TYPE_2__ _control_streams; } ;
typedef TYPE_3__ h2o_http3_conn_t ;


 int H2O_HTTP3_ERROR_STREAM_CREATION ;



 int UINT64_MAX ;
 int control_stream_handle_input (TYPE_3__*,struct st_h2o_http3_ingress_unistream_t*,int const**,int const*,char const**) ;
 int qpack_decoder_stream_handle_input (TYPE_3__*,struct st_h2o_http3_ingress_unistream_t*,int const**,int const*,char const**) ;
 int qpack_encoder_stream_handle_input (TYPE_3__*,struct st_h2o_http3_ingress_unistream_t*,int const**,int const*,char const**) ;
 int quicly_decodev (int const**,int const*) ;
 int quicly_request_stop (int ,int ) ;
 int stub1 (TYPE_3__*,struct st_h2o_http3_ingress_unistream_t*,int const**,int const*,char const**) ;
 int unknown_stream_type_handle_input (TYPE_3__*,struct st_h2o_http3_ingress_unistream_t*,int const**,int const*,char const**) ;

__attribute__((used)) static int unknown_type_handle_input(h2o_http3_conn_t *conn, struct st_h2o_http3_ingress_unistream_t *stream, const uint8_t **src,
                                     const uint8_t *src_end, const char **err_desc)
{
    if (*src == src_end) {

        return 0;
    }


    uint64_t type;
    if ((type = quicly_decodev(src, src_end)) == UINT64_MAX)
        return 0;

    switch (type) {
    case 130:
        conn->_control_streams.ingress.control = stream;
        stream->handle_input = control_stream_handle_input;
        break;
    case 128:
        conn->_control_streams.ingress.qpack_encoder = stream;
        stream->handle_input = qpack_encoder_stream_handle_input;
        break;
    case 129:
        conn->_control_streams.ingress.qpack_decoder = stream;
        stream->handle_input = qpack_decoder_stream_handle_input;
        break;
    default:
        quicly_request_stop(stream->quic, H2O_HTTP3_ERROR_STREAM_CREATION);
        stream->handle_input =
            unknown_stream_type_handle_input;
        break;
    }

    return stream->handle_input(conn, stream, src, src_end, err_desc);
}
