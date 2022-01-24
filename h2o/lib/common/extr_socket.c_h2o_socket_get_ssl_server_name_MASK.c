#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* ssl; } ;
typedef  TYPE_2__ h2o_socket_t ;
struct TYPE_4__ {int /*<<< orphan*/ * ossl; int /*<<< orphan*/ * ptls; } ;

/* Variables and functions */
 char const* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TLSEXT_NAMETYPE_host_name ; 
 char const* FUNC1 (int /*<<< orphan*/ *) ; 

const char *FUNC2(const h2o_socket_t *sock)
{
    if (sock->ssl != NULL) {
#if H2O_USE_PICOTLS
        if (sock->ssl->ptls != NULL) {
            return ptls_get_server_name(sock->ssl->ptls);
        } else
#endif
            if (sock->ssl->ossl != NULL) {
            return FUNC0(sock->ssl->ossl, TLSEXT_NAMETYPE_host_name);
        }
    }
    return NULL;
}