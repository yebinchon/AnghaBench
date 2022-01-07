
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int state; } ;
typedef TYPE_1__ ptls_t ;
typedef int ptls_iovec_t ;


 int PTLS_CLIENT_CERTIFICATE_VERIFY_CONTEXT_STRING ;
 int PTLS_ERROR_IN_PROGRESS ;
 int PTLS_STATE_SERVER_EXPECT_FINISHED ;
 int handle_certificate_verify (TYPE_1__*,int ,int ) ;

__attribute__((used)) static int server_handle_certificate_verify(ptls_t *tls, ptls_iovec_t message)
{
    int ret = handle_certificate_verify(tls, message, PTLS_CLIENT_CERTIFICATE_VERIFY_CONTEXT_STRING);

    if (ret == 0) {
        tls->state = PTLS_STATE_SERVER_EXPECT_FINISHED;
        ret = PTLS_ERROR_IN_PROGRESS;
    }

    return ret;
}
