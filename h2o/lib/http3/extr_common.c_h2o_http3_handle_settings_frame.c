
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_7__ {int enc; } ;
struct TYPE_6__ {int max_header_list_size; int num_placeholders; } ;
struct TYPE_8__ {TYPE_2__ qpack; TYPE_1__ peer_settings; int quic; } ;
typedef TYPE_3__ h2o_http3_conn_t ;


 int H2O_HTTP3_DEFAULT_HEADER_TABLE_SIZE ;
 int H2O_HTTP3_ERROR_FRAME ;



 int UINT64_MAX ;
 int assert (int) ;
 int h2o_http3_has_received_settings (TYPE_3__*) ;
 int h2o_qpack_create_encoder (int ,int) ;
 int quicly_decodev (int const**,int const*) ;
 int quicly_is_client (int ) ;

int h2o_http3_handle_settings_frame(h2o_http3_conn_t *conn, const uint8_t *payload, size_t length, const char **err_desc)
{
    const uint8_t *src = payload, *src_end = src + length;
    uint32_t header_table_size = H2O_HTTP3_DEFAULT_HEADER_TABLE_SIZE;

    assert(!h2o_http3_has_received_settings(conn));

    while (src != src_end) {
        uint64_t id;
        uint64_t value;
        if ((id = quicly_decodev(&src, src_end)) == UINT64_MAX)
            goto Malformed;
        if ((value = quicly_decodev(&src, src_end)) == UINT64_MAX)
            goto Malformed;
        switch (id) {
        case 129:
            conn->peer_settings.max_header_list_size = (uint64_t)value;
            break;
        case 128:
            if (!quicly_is_client(conn->quic))
                goto Malformed;
            conn->peer_settings.num_placeholders = (uint64_t)value;
            break;
        case 130:
            header_table_size = (uint32_t)value;
            break;

        default:
            break;
        }
    }

    conn->qpack.enc = h2o_qpack_create_encoder(header_table_size, 100 );
    return 0;
Malformed:
    *err_desc = "malformed SETTINGS frame";
    return H2O_HTTP3_ERROR_FRAME;
}
