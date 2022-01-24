#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_14__ {int /*<<< orphan*/  timeout_entry; TYPE_4__* ctx; TYPE_3__** sock; int /*<<< orphan*/  timeout; } ;
typedef  TYPE_2__ h2o_tunnel_t ;
struct TYPE_15__ {TYPE_1__* input; TYPE_2__* data; } ;
typedef  TYPE_3__ h2o_socket_t ;
struct TYPE_16__ {int /*<<< orphan*/  loop; } ;
typedef  TYPE_4__ h2o_context_t ;
struct TYPE_13__ {scalar_t__ size; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/  (*) (TYPE_3__*,int /*<<< orphan*/ *)) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  on_timeout ; 

h2o_tunnel_t *FUNC5(h2o_context_t *ctx, h2o_socket_t *sock1, h2o_socket_t *sock2, uint64_t timeout)
{
    h2o_tunnel_t *tunnel = FUNC0(sizeof(*tunnel));
    tunnel->ctx = ctx;
    tunnel->timeout = timeout;
    tunnel->sock[0] = sock1;
    tunnel->sock[1] = sock2;
    sock1->data = tunnel;
    sock2->data = tunnel;
    FUNC2(&tunnel->timeout_entry, on_timeout);
    FUNC3(tunnel->ctx->loop, timeout, &tunnel->timeout_entry);

    /* Bring up the tunnel. Note. Upstream always ready first. */
    if (sock2->input->size)
        FUNC4(sock2, NULL);
    if (sock1->input->size)
        FUNC4(sock1, NULL);
    FUNC1(sock2, on_read);
    FUNC1(sock1, on_read);

    return tunnel;
}