#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct listener_ctx_t {int /*<<< orphan*/  sock; } ;
struct TYPE_6__ {scalar_t__ max_connections; size_t num_listeners; TYPE_2__** listeners; } ;
struct TYPE_4__ {int /*<<< orphan*/ * ctx; } ;
struct TYPE_5__ {TYPE_1__ quic; } ;

/* Variables and functions */
 TYPE_3__ conf ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  on_accept ; 

__attribute__((used)) static void FUNC4(struct listener_ctx_t *listeners)
{
    size_t i;

    if (FUNC3(0) < conf.max_connections) {
        for (i = 0; i != conf.num_listeners; ++i) {
            if (conf.listeners[i]->quic.ctx == NULL && !FUNC0(listeners[i].sock))
                FUNC1(listeners[i].sock, on_accept);
        }
    } else {
        for (i = 0; i != conf.num_listeners; ++i) {
            if (conf.listeners[i]->quic.ctx == NULL && FUNC0(listeners[i].sock))
                FUNC2(listeners[i].sock);
        }
    }
}