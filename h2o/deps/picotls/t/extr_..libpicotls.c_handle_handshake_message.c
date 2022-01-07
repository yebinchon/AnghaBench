
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_37__ TYPE_3__ ;
typedef struct TYPE_36__ TYPE_2__ ;
typedef struct TYPE_35__ TYPE_1__ ;


typedef int const uint8_t ;
struct TYPE_36__ {int state; TYPE_1__* ctx; } ;
typedef TYPE_2__ ptls_t ;
typedef int ptls_message_emitter_t ;
struct TYPE_37__ {int* base; int len; } ;
typedef TYPE_3__ ptls_iovec_t ;
typedef int ptls_handshake_properties_t ;
struct TYPE_35__ {int omit_end_of_early_data; } ;


 int PTLS_ALERT_HANDSHAKE_FAILURE ;
 int PTLS_ALERT_UNEXPECTED_MESSAGE ;
 int PTLS_HANDSHAKE_HEADER_SIZE ;

 int const PTLS_HANDSHAKE_TYPE_CERTIFICATE_REQUEST ;
 int const PTLS_HANDSHAKE_TYPE_CERTIFICATE_VERIFY ;
 int const PTLS_HANDSHAKE_TYPE_CLIENT_HELLO ;

 int const PTLS_HANDSHAKE_TYPE_ENCRYPTED_EXTENSIONS ;
 int const PTLS_HANDSHAKE_TYPE_END_OF_EARLY_DATA ;
 int const PTLS_HANDSHAKE_TYPE_FINISHED ;


 int const PTLS_HANDSHAKE_TYPE_SERVER_HELLO ;
 int PTLS_PROBE (int ,TYPE_2__*,int,int*,int,int) ;
 int RECEIVE_MESSAGE ;
 int assert (int) ;
 int client_handle_certificate (TYPE_2__*,TYPE_3__) ;
 int client_handle_certificate_request (TYPE_2__*,TYPE_3__,int *) ;
 int client_handle_certificate_verify (TYPE_2__*,TYPE_3__) ;
 int client_handle_compressed_certificate (TYPE_2__*,TYPE_3__) ;
 int client_handle_encrypted_extensions (TYPE_2__*,TYPE_3__,int *) ;
 int client_handle_finished (TYPE_2__*,int *,TYPE_3__) ;
 int client_handle_hello (TYPE_2__*,int *,TYPE_3__,int *) ;
 int client_handle_new_session_ticket (TYPE_2__*,TYPE_3__) ;
 int handle_key_update (TYPE_2__*,int *,TYPE_3__) ;
 int server_handle_certificate (TYPE_2__*,TYPE_3__) ;
 int server_handle_certificate_verify (TYPE_2__*,TYPE_3__) ;
 int server_handle_end_of_early_data (TYPE_2__*,TYPE_3__) ;
 int server_handle_finished (TYPE_2__*,TYPE_3__) ;
 int server_handle_hello (TYPE_2__*,int *,TYPE_3__,int *) ;

__attribute__((used)) static int handle_handshake_message(ptls_t *tls, ptls_message_emitter_t *emitter, ptls_iovec_t message, int is_end_of_record,
                                    ptls_handshake_properties_t *properties)
{
    uint8_t type = message.base[0];
    int ret;

    switch (tls->state) {
    case 136:
    case 137:
        if (type == PTLS_HANDSHAKE_TYPE_SERVER_HELLO && is_end_of_record) {
            ret = client_handle_hello(tls, emitter, message, properties);
        } else {
            ret = PTLS_ALERT_UNEXPECTED_MESSAGE;
        }
        break;
    case 139:
        if (type == PTLS_HANDSHAKE_TYPE_ENCRYPTED_EXTENSIONS) {
            ret = client_handle_encrypted_extensions(tls, message, properties);
        } else {
            ret = PTLS_ALERT_UNEXPECTED_MESSAGE;
        }
        break;
    case 141:
        if (type == PTLS_HANDSHAKE_TYPE_CERTIFICATE_REQUEST) {
            ret = client_handle_certificate_request(tls, message, properties);
            break;
        }

    case 142:
        switch (type) {
        case 146:
            ret = client_handle_certificate(tls, message);
            break;
        case 145:
            ret = client_handle_compressed_certificate(tls, message);
            break;
        default:
            ret = PTLS_ALERT_UNEXPECTED_MESSAGE;
            break;
        }
        break;
    case 140:
        if (type == PTLS_HANDSHAKE_TYPE_CERTIFICATE_VERIFY) {
            ret = client_handle_certificate_verify(tls, message);
        } else {
            ret = PTLS_ALERT_UNEXPECTED_MESSAGE;
        }
        break;
    case 138:
        if (type == PTLS_HANDSHAKE_TYPE_FINISHED && is_end_of_record) {
            ret = client_handle_finished(tls, emitter, message);
        } else {
            ret = PTLS_ALERT_UNEXPECTED_MESSAGE;
        }
        break;
    case 132:
    case 129:
        if (type == PTLS_HANDSHAKE_TYPE_CLIENT_HELLO && is_end_of_record) {
            ret = server_handle_hello(tls, emitter, message, properties);
        } else {
            ret = PTLS_ALERT_HANDSHAKE_FAILURE;
        }
        break;
    case 134:
        if (type == 146) {
            ret = server_handle_certificate(tls, message);
        } else {
            ret = PTLS_ALERT_UNEXPECTED_MESSAGE;
        }
        break;
    case 133:
        if (type == PTLS_HANDSHAKE_TYPE_CERTIFICATE_VERIFY) {
            ret = server_handle_certificate_verify(tls, message);
        } else {
            ret = PTLS_ALERT_UNEXPECTED_MESSAGE;
        }
        break;
    case 131:
        assert(!tls->ctx->omit_end_of_early_data);
        if (type == PTLS_HANDSHAKE_TYPE_END_OF_EARLY_DATA) {
            ret = server_handle_end_of_early_data(tls, message);
        } else {
            ret = PTLS_ALERT_UNEXPECTED_MESSAGE;
        }
        break;
    case 130:
        if (type == PTLS_HANDSHAKE_TYPE_FINISHED && is_end_of_record) {
            ret = server_handle_finished(tls, message);
        } else {
            ret = PTLS_ALERT_HANDSHAKE_FAILURE;
        }
        break;
    case 135:
        switch (type) {
        case 143:
            ret = client_handle_new_session_ticket(tls, message);
            break;
        case 144:
            ret = handle_key_update(tls, emitter, message);
            break;
        default:
            ret = PTLS_ALERT_UNEXPECTED_MESSAGE;
            break;
        }
        break;
    case 128:
        switch (type) {
        case 144:
            ret = handle_key_update(tls, emitter, message);
            break;
        default:
            ret = PTLS_ALERT_UNEXPECTED_MESSAGE;
            break;
        }
        break;
    default:
        assert(!"unexpected state");
        break;
    }

    PTLS_PROBE(RECEIVE_MESSAGE, tls, message.base[0], message.base + PTLS_HANDSHAKE_HEADER_SIZE,
               message.len - PTLS_HANDSHAKE_HEADER_SIZE, ret);

    return ret;
}
