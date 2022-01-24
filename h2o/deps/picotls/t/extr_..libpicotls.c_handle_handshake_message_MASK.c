#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_37__   TYPE_3__ ;
typedef  struct TYPE_36__   TYPE_2__ ;
typedef  struct TYPE_35__   TYPE_1__ ;

/* Type definitions */
typedef  int const uint8_t ;
struct TYPE_36__ {int state; TYPE_1__* ctx; } ;
typedef  TYPE_2__ ptls_t ;
typedef  int /*<<< orphan*/  ptls_message_emitter_t ;
struct TYPE_37__ {int* base; int len; } ;
typedef  TYPE_3__ ptls_iovec_t ;
typedef  int /*<<< orphan*/  ptls_handshake_properties_t ;
struct TYPE_35__ {int /*<<< orphan*/  omit_end_of_early_data; } ;

/* Variables and functions */
 int PTLS_ALERT_HANDSHAKE_FAILURE ; 
 int PTLS_ALERT_UNEXPECTED_MESSAGE ; 
 int PTLS_HANDSHAKE_HEADER_SIZE ; 
#define  PTLS_HANDSHAKE_TYPE_CERTIFICATE 146 
 int const PTLS_HANDSHAKE_TYPE_CERTIFICATE_REQUEST ; 
 int const PTLS_HANDSHAKE_TYPE_CERTIFICATE_VERIFY ; 
 int const PTLS_HANDSHAKE_TYPE_CLIENT_HELLO ; 
#define  PTLS_HANDSHAKE_TYPE_COMPRESSED_CERTIFICATE 145 
 int const PTLS_HANDSHAKE_TYPE_ENCRYPTED_EXTENSIONS ; 
 int const PTLS_HANDSHAKE_TYPE_END_OF_EARLY_DATA ; 
 int const PTLS_HANDSHAKE_TYPE_FINISHED ; 
#define  PTLS_HANDSHAKE_TYPE_KEY_UPDATE 144 
#define  PTLS_HANDSHAKE_TYPE_NEW_SESSION_TICKET 143 
 int const PTLS_HANDSHAKE_TYPE_SERVER_HELLO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*,int,int*,int,int) ; 
#define  PTLS_STATE_CLIENT_EXPECT_CERTIFICATE 142 
#define  PTLS_STATE_CLIENT_EXPECT_CERTIFICATE_REQUEST_OR_CERTIFICATE 141 
#define  PTLS_STATE_CLIENT_EXPECT_CERTIFICATE_VERIFY 140 
#define  PTLS_STATE_CLIENT_EXPECT_ENCRYPTED_EXTENSIONS 139 
#define  PTLS_STATE_CLIENT_EXPECT_FINISHED 138 
#define  PTLS_STATE_CLIENT_EXPECT_SECOND_SERVER_HELLO 137 
#define  PTLS_STATE_CLIENT_EXPECT_SERVER_HELLO 136 
#define  PTLS_STATE_CLIENT_POST_HANDSHAKE 135 
#define  PTLS_STATE_SERVER_EXPECT_CERTIFICATE 134 
#define  PTLS_STATE_SERVER_EXPECT_CERTIFICATE_VERIFY 133 
#define  PTLS_STATE_SERVER_EXPECT_CLIENT_HELLO 132 
#define  PTLS_STATE_SERVER_EXPECT_END_OF_EARLY_DATA 131 
#define  PTLS_STATE_SERVER_EXPECT_FINISHED 130 
#define  PTLS_STATE_SERVER_EXPECT_SECOND_CLIENT_HELLO 129 
#define  PTLS_STATE_SERVER_POST_HANDSHAKE 128 
 int /*<<< orphan*/  RECEIVE_MESSAGE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (TYPE_2__*,TYPE_3__) ; 
 int FUNC3 (TYPE_2__*,TYPE_3__,int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_2__*,TYPE_3__) ; 
 int FUNC5 (TYPE_2__*,TYPE_3__) ; 
 int FUNC6 (TYPE_2__*,TYPE_3__,int /*<<< orphan*/ *) ; 
 int FUNC7 (TYPE_2__*,int /*<<< orphan*/ *,TYPE_3__) ; 
 int FUNC8 (TYPE_2__*,int /*<<< orphan*/ *,TYPE_3__,int /*<<< orphan*/ *) ; 
 int FUNC9 (TYPE_2__*,TYPE_3__) ; 
 int FUNC10 (TYPE_2__*,int /*<<< orphan*/ *,TYPE_3__) ; 
 int FUNC11 (TYPE_2__*,TYPE_3__) ; 
 int FUNC12 (TYPE_2__*,TYPE_3__) ; 
 int FUNC13 (TYPE_2__*,TYPE_3__) ; 
 int FUNC14 (TYPE_2__*,TYPE_3__) ; 
 int FUNC15 (TYPE_2__*,int /*<<< orphan*/ *,TYPE_3__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(ptls_t *tls, ptls_message_emitter_t *emitter, ptls_iovec_t message, int is_end_of_record,
                                    ptls_handshake_properties_t *properties)
{
    uint8_t type = message.base[0];
    int ret;

    switch (tls->state) {
    case PTLS_STATE_CLIENT_EXPECT_SERVER_HELLO:
    case PTLS_STATE_CLIENT_EXPECT_SECOND_SERVER_HELLO:
        if (type == PTLS_HANDSHAKE_TYPE_SERVER_HELLO && is_end_of_record) {
            ret = FUNC8(tls, emitter, message, properties);
        } else {
            ret = PTLS_ALERT_UNEXPECTED_MESSAGE;
        }
        break;
    case PTLS_STATE_CLIENT_EXPECT_ENCRYPTED_EXTENSIONS:
        if (type == PTLS_HANDSHAKE_TYPE_ENCRYPTED_EXTENSIONS) {
            ret = FUNC6(tls, message, properties);
        } else {
            ret = PTLS_ALERT_UNEXPECTED_MESSAGE;
        }
        break;
    case PTLS_STATE_CLIENT_EXPECT_CERTIFICATE_REQUEST_OR_CERTIFICATE:
        if (type == PTLS_HANDSHAKE_TYPE_CERTIFICATE_REQUEST) {
            ret = FUNC3(tls, message, properties);
            break;
        }
    /* fall through */
    case PTLS_STATE_CLIENT_EXPECT_CERTIFICATE:
        switch (type) {
        case PTLS_HANDSHAKE_TYPE_CERTIFICATE:
            ret = FUNC2(tls, message);
            break;
        case PTLS_HANDSHAKE_TYPE_COMPRESSED_CERTIFICATE:
            ret = FUNC5(tls, message);
            break;
        default:
            ret = PTLS_ALERT_UNEXPECTED_MESSAGE;
            break;
        }
        break;
    case PTLS_STATE_CLIENT_EXPECT_CERTIFICATE_VERIFY:
        if (type == PTLS_HANDSHAKE_TYPE_CERTIFICATE_VERIFY) {
            ret = FUNC4(tls, message);
        } else {
            ret = PTLS_ALERT_UNEXPECTED_MESSAGE;
        }
        break;
    case PTLS_STATE_CLIENT_EXPECT_FINISHED:
        if (type == PTLS_HANDSHAKE_TYPE_FINISHED && is_end_of_record) {
            ret = FUNC7(tls, emitter, message);
        } else {
            ret = PTLS_ALERT_UNEXPECTED_MESSAGE;
        }
        break;
    case PTLS_STATE_SERVER_EXPECT_CLIENT_HELLO:
    case PTLS_STATE_SERVER_EXPECT_SECOND_CLIENT_HELLO:
        if (type == PTLS_HANDSHAKE_TYPE_CLIENT_HELLO && is_end_of_record) {
            ret = FUNC15(tls, emitter, message, properties);
        } else {
            ret = PTLS_ALERT_HANDSHAKE_FAILURE;
        }
        break;
    case PTLS_STATE_SERVER_EXPECT_CERTIFICATE:
        if (type == PTLS_HANDSHAKE_TYPE_CERTIFICATE) {
            ret = FUNC11(tls, message);
        } else {
            ret = PTLS_ALERT_UNEXPECTED_MESSAGE;
        }
        break;
    case PTLS_STATE_SERVER_EXPECT_CERTIFICATE_VERIFY:
        if (type == PTLS_HANDSHAKE_TYPE_CERTIFICATE_VERIFY) {
            ret = FUNC12(tls, message);
        } else {
            ret = PTLS_ALERT_UNEXPECTED_MESSAGE;
        }
        break;
    case PTLS_STATE_SERVER_EXPECT_END_OF_EARLY_DATA:
        FUNC1(!tls->ctx->omit_end_of_early_data);
        if (type == PTLS_HANDSHAKE_TYPE_END_OF_EARLY_DATA) {
            ret = FUNC13(tls, message);
        } else {
            ret = PTLS_ALERT_UNEXPECTED_MESSAGE;
        }
        break;
    case PTLS_STATE_SERVER_EXPECT_FINISHED:
        if (type == PTLS_HANDSHAKE_TYPE_FINISHED && is_end_of_record) {
            ret = FUNC14(tls, message);
        } else {
            ret = PTLS_ALERT_HANDSHAKE_FAILURE;
        }
        break;
    case PTLS_STATE_CLIENT_POST_HANDSHAKE:
        switch (type) {
        case PTLS_HANDSHAKE_TYPE_NEW_SESSION_TICKET:
            ret = FUNC9(tls, message);
            break;
        case PTLS_HANDSHAKE_TYPE_KEY_UPDATE:
            ret = FUNC10(tls, emitter, message);
            break;
        default:
            ret = PTLS_ALERT_UNEXPECTED_MESSAGE;
            break;
        }
        break;
    case PTLS_STATE_SERVER_POST_HANDSHAKE:
        switch (type) {
        case PTLS_HANDSHAKE_TYPE_KEY_UPDATE:
            ret = FUNC10(tls, emitter, message);
            break;
        default:
            ret = PTLS_ALERT_UNEXPECTED_MESSAGE;
            break;
        }
        break;
    default:
        FUNC1(!"unexpected state");
        break;
    }

    FUNC0(RECEIVE_MESSAGE, tls, message.base[0], message.base + PTLS_HANDSHAKE_HEADER_SIZE,
               message.len - PTLS_HANDSHAKE_HEADER_SIZE, ret);

    return ret;
}