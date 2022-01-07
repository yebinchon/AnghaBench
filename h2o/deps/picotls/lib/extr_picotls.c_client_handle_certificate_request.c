
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_9__ {scalar_t__ len; } ;
struct TYPE_13__ {TYPE_1__ context; } ;
struct TYPE_10__ {TYPE_6__ certificate_request; } ;
struct TYPE_11__ {int key_schedule; int state; TYPE_2__ client; } ;
typedef TYPE_3__ ptls_t ;
struct TYPE_12__ {int len; int * base; } ;
typedef TYPE_4__ ptls_iovec_t ;
typedef int ptls_handshake_properties_t ;


 int PTLS_ALERT_ILLEGAL_PARAMETER ;
 int PTLS_ERROR_IN_PROGRESS ;
 int PTLS_HANDSHAKE_HEADER_SIZE ;
 int PTLS_STATE_CLIENT_EXPECT_CERTIFICATE ;
 int decode_certificate_request (TYPE_3__*,TYPE_6__*,int const*,int const* const) ;
 int ptls__key_schedule_update_hash (int ,int *,int) ;

__attribute__((used)) static int client_handle_certificate_request(ptls_t *tls, ptls_iovec_t message, ptls_handshake_properties_t *properties)
{
    const uint8_t *src = message.base + PTLS_HANDSHAKE_HEADER_SIZE, *const end = message.base + message.len;
    int ret = 0;

    if ((ret = decode_certificate_request(tls, &tls->client.certificate_request, src, end)) != 0)
        return ret;


    if (tls->client.certificate_request.context.len != 0)
        return PTLS_ALERT_ILLEGAL_PARAMETER;

    tls->state = PTLS_STATE_CLIENT_EXPECT_CERTIFICATE;
    ptls__key_schedule_update_hash(tls->key_schedule, message.base, message.len);

    return PTLS_ERROR_IN_PROGRESS;
}
