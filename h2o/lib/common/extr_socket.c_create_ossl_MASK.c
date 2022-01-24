#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* ssl; } ;
typedef  TYPE_2__ h2o_socket_t ;
struct TYPE_6__ {int /*<<< orphan*/  ossl; int /*<<< orphan*/  ssl_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC3(h2o_socket_t *sock)
{
    sock->ssl->ossl = FUNC0(sock->ssl->ssl_ctx);
    /* set app data to be used in h2o_socket_ssl_new_session_cb */
    FUNC1(sock->ssl->ossl, sock);
    FUNC2(sock);
}