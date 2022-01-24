#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_3__* ssl; } ;
typedef  TYPE_4__ h2o_socket_t ;
struct TYPE_6__ {int /*<<< orphan*/  session_cache_key_hash; int /*<<< orphan*/  session_cache_key; int /*<<< orphan*/ * session_cache; } ;
struct TYPE_7__ {TYPE_1__ client; } ;
struct TYPE_8__ {TYPE_2__ handshake; } ;
typedef  int /*<<< orphan*/  SSL_SESSION ;
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 

int FUNC8(SSL *s, SSL_SESSION *sess)
{
    h2o_socket_t *sock = (h2o_socket_t *)FUNC1(s);
    FUNC3(sock != NULL);
    FUNC3(sock->ssl != NULL);

    if (!FUNC2(s) && sock->ssl->handshake.client.session_cache != NULL
#if !defined(LIBRESSL_VERSION_NUMBER) && OPENSSL_VERSION_NUMBER >= 0x1010100fL
        && SSL_SESSION_is_resumable(sess)
#endif
    ) {
        FUNC4(sock->ssl->handshake.client.session_cache, FUNC6(FUNC7(sock)),
                      sock->ssl->handshake.client.session_cache_key, sock->ssl->handshake.client.session_cache_key_hash,
                      FUNC5(sess, 1));
        return 1; /* retain ref count */
    }

    return 0; /* drop ref count */
}