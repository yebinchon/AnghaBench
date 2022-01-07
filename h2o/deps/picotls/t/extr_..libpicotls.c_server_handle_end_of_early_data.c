
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int state; int key_schedule; } ;
typedef TYPE_1__ ptls_t ;
struct TYPE_7__ {int len; int base; } ;
typedef TYPE_2__ ptls_iovec_t ;


 int PTLS_ERROR_IN_PROGRESS ;
 int PTLS_STATE_SERVER_EXPECT_FINISHED ;
 int commission_handshake_secret (TYPE_1__*) ;
 int ptls__key_schedule_update_hash (int ,int ,int ) ;

__attribute__((used)) static int server_handle_end_of_early_data(ptls_t *tls, ptls_iovec_t message)
{
    int ret;

    if ((ret = commission_handshake_secret(tls)) != 0)
        goto Exit;

    ptls__key_schedule_update_hash(tls->key_schedule, message.base, message.len);
    tls->state = PTLS_STATE_SERVER_EXPECT_FINISHED;
    ret = PTLS_ERROR_IN_PROGRESS;

Exit:
    return ret;
}
