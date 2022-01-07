
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_3__ {int insert_count; } ;
typedef TYPE_1__ h2o_qpack_decoder_t ;


 scalar_t__* h2o_hpack_encode_int (scalar_t__*,int ,int) ;

size_t h2o_qpack_decoder_send_state_sync(h2o_qpack_decoder_t *qpack, uint8_t *outbuf)
{
    if (qpack->insert_count == 0)
        return 0;

    uint8_t *dst = outbuf;
    *dst = 0;
    dst = h2o_hpack_encode_int(dst, qpack->insert_count, 6);
    qpack->insert_count = 0;

    return dst - outbuf;
}
