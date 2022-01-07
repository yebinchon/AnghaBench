
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int ptls_t ;
typedef int ptls_handshake_properties_t ;
struct TYPE_4__ {scalar_t__ off; } ;
typedef TYPE_1__ ptls_buffer_t ;


 int PTLS_ERROR_IN_PROGRESS ;
 int memset (size_t*,int ,int) ;
 int ptls_handle_message (int *,TYPE_1__*,size_t*,size_t,int const*,size_t,int *) ;

__attribute__((used)) static int feed_messages(ptls_t *tls, ptls_buffer_t *outbuf, size_t *out_epoch_offsets, const uint8_t *input,
                         const size_t *in_epoch_offsets, ptls_handshake_properties_t *props)
{
    size_t i;
    int ret = PTLS_ERROR_IN_PROGRESS;

    outbuf->off = 0;
    memset(out_epoch_offsets, 0, sizeof(*out_epoch_offsets) * 5);

    for (i = 0; i != 4; ++i) {
        size_t len = in_epoch_offsets[i + 1] - in_epoch_offsets[i];
        if (len != 0) {
            ret = ptls_handle_message(tls, outbuf, out_epoch_offsets, i, input + in_epoch_offsets[i], len, props);
            if (!(ret == 0 || ret == PTLS_ERROR_IN_PROGRESS))
                break;
        }
    }

    return ret;
}
