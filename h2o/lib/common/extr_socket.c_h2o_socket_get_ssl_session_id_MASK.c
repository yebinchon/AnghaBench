#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_2__* ssl; } ;
typedef  TYPE_5__ h2o_socket_t ;
typedef  int /*<<< orphan*/  h2o_iovec_t ;
struct TYPE_10__ {scalar_t__ state; } ;
struct TYPE_9__ {TYPE_4__ async_resumption; } ;
struct TYPE_7__ {TYPE_3__ server; } ;
struct TYPE_8__ {int /*<<< orphan*/ * ossl; TYPE_1__ handshake; int /*<<< orphan*/ * ptls; } ;
typedef  int /*<<< orphan*/  SSL_SESSION ;

/* Variables and functions */
 scalar_t__ ASYNC_RESUMPTION_STATE_COMPLETE ; 
 unsigned char* FUNC0 (int /*<<< orphan*/ *,unsigned int*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char const*,unsigned int) ; 

h2o_iovec_t FUNC3(h2o_socket_t *sock)
{
    if (sock->ssl != NULL) {
        if (sock->ssl->ptls != NULL) {
            /* FIXME */
        } else if (sock->ssl->ossl != NULL) {
            SSL_SESSION *session;
            if (sock->ssl->handshake.server.async_resumption.state == ASYNC_RESUMPTION_STATE_COMPLETE &&
                (session = FUNC1(sock->ssl->ossl)) != NULL) {
                unsigned id_len;
                const unsigned char *id = FUNC0(session, &id_len);
                return FUNC2(id, id_len);
            }
        }
    }

    return FUNC2(NULL, 0);
}