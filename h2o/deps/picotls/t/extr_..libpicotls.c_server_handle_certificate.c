
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int state; int key_schedule; } ;
typedef TYPE_1__ ptls_t ;
struct TYPE_7__ {scalar_t__ len; scalar_t__ base; } ;
typedef TYPE_2__ ptls_iovec_t ;


 int PTLS_ALERT_CERTIFICATE_REQUIRED ;
 int PTLS_ERROR_IN_PROGRESS ;
 scalar_t__ PTLS_HANDSHAKE_HEADER_SIZE ;
 int PTLS_STATE_SERVER_EXPECT_CERTIFICATE_VERIFY ;
 int handle_certificate (TYPE_1__*,scalar_t__,scalar_t__,int*) ;
 int ptls__key_schedule_update_hash (int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static int server_handle_certificate(ptls_t *tls, ptls_iovec_t message)
{
    int got_certs, ret;

    if ((ret = handle_certificate(tls, message.base + PTLS_HANDSHAKE_HEADER_SIZE, message.base + message.len, &got_certs)) != 0)
        return ret;
    if (!got_certs)
        return PTLS_ALERT_CERTIFICATE_REQUIRED;

    ptls__key_schedule_update_hash(tls->key_schedule, message.base, message.len);

    tls->state = PTLS_STATE_SERVER_EXPECT_CERTIFICATE_VERIFY;
    return PTLS_ERROR_IN_PROGRESS;
}
