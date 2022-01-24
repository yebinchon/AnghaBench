#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/ * write; } ;
struct TYPE_11__ {TYPE_3__* ssl; TYPE_1__ _cb; } ;
typedef  TYPE_4__ h2o_socket_t ;
typedef  int /*<<< orphan*/  (* h2o_socket_cb ) (TYPE_4__*,char const*) ;
struct TYPE_9__ {int /*<<< orphan*/  (* cb ) (TYPE_4__*,char const*) ;} ;
struct TYPE_10__ {int record_overhead; TYPE_2__ handshake; int /*<<< orphan*/  ossl; int /*<<< orphan*/ * ptls; } ;
typedef  int /*<<< orphan*/  SSL_CIPHER ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
#define  TLS1_CK_DHE_RSA_CHACHA20_POLY1305 138 
#define  TLS1_CK_DHE_RSA_WITH_AES_128_GCM_SHA256 137 
#define  TLS1_CK_DHE_RSA_WITH_AES_256_GCM_SHA384 136 
#define  TLS1_CK_ECDHE_ECDSA_CHACHA20_POLY1305 135 
#define  TLS1_CK_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256 134 
#define  TLS1_CK_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384 133 
#define  TLS1_CK_ECDHE_RSA_CHACHA20_POLY1305 132 
#define  TLS1_CK_ECDHE_RSA_WITH_AES_128_GCM_SHA256 131 
#define  TLS1_CK_ECDHE_RSA_WITH_AES_256_GCM_SHA384 130 
#define  TLS1_CK_RSA_WITH_AES_128_GCM_SHA256 129 
#define  TLS1_CK_RSA_WITH_AES_256_GCM_SHA384 128 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(h2o_socket_t *sock, const char *err)
{
    if (err == NULL) {
        if (sock->ssl->ptls != NULL) {
            sock->ssl->record_overhead = FUNC3(sock->ssl->ptls);
        } else {
            const SSL_CIPHER *cipher = FUNC1(sock->ssl->ossl);
            switch (FUNC0(cipher)) {
            case TLS1_CK_RSA_WITH_AES_128_GCM_SHA256:
            case TLS1_CK_DHE_RSA_WITH_AES_128_GCM_SHA256:
            case TLS1_CK_ECDHE_RSA_WITH_AES_128_GCM_SHA256:
            case TLS1_CK_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256:
            case TLS1_CK_RSA_WITH_AES_256_GCM_SHA384:
            case TLS1_CK_DHE_RSA_WITH_AES_256_GCM_SHA384:
            case TLS1_CK_ECDHE_RSA_WITH_AES_256_GCM_SHA384:
            case TLS1_CK_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384:
                sock->ssl->record_overhead = 5 /* header */ + 8 /* record_iv_length (RFC 5288 3) */ + 16 /* tag (RFC 5116 5.1) */;
                break;
#if defined(TLS1_CK_DHE_RSA_CHACHA20_POLY1305)
            case TLS1_CK_DHE_RSA_CHACHA20_POLY1305:
            case TLS1_CK_ECDHE_RSA_CHACHA20_POLY1305:
            case TLS1_CK_ECDHE_ECDSA_CHACHA20_POLY1305:
                sock->ssl->record_overhead = 5 /* header */ + 16 /* tag */;
                break;
#endif
            default:
                sock->ssl->record_overhead = 32; /* sufficiently large number that can hold most payloads */
                break;
            }
        }
    }

    h2o_socket_cb handshake_cb = sock->ssl->handshake.cb;
    sock->_cb.write = NULL;
    sock->ssl->handshake.cb = NULL;
    if (err == NULL)
        FUNC2(sock);
    handshake_cb(sock, err);
}