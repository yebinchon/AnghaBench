#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {struct st_h2o_evloop_socket_t* head; } ;
struct st_h2o_evloop_socket_t {int /*<<< orphan*/  _timeouts; struct st_h2o_evloop_socket_t* _next_statechanged; TYPE_1__ _statechanged; struct st_h2o_evloop_socket_t* _next_pending; struct st_h2o_evloop_socket_t* _pending_as_server; struct st_h2o_evloop_socket_t* _pending_as_client; } ;
typedef  int /*<<< orphan*/  h2o_socket_t ;
typedef  struct st_h2o_evloop_socket_t h2o_evloop_t ;

/* Variables and functions */
 scalar_t__ UINT64_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct st_h2o_evloop_socket_t*) ; 
 int /*<<< orphan*/  FUNC2 (struct st_h2o_evloop_socket_t*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(h2o_evloop_t *loop)
{
    struct st_h2o_evloop_socket_t *sock;

    /* timeouts are governed by the application and MUST be destroyed prior to destroying the loop */
    FUNC0(FUNC5(loop->_timeouts) == UINT64_MAX);

    /* dispose all socket */
    while ((sock = loop->_pending_as_client) != NULL) {
        loop->_pending_as_client = sock->_next_pending;
        sock->_next_pending = sock;
        FUNC3((h2o_socket_t *)sock);
    }
    while ((sock = loop->_pending_as_server) != NULL) {
        loop->_pending_as_server = sock->_next_pending;
        sock->_next_pending = sock;
        FUNC3((h2o_socket_t *)sock);
    }

    /* now all socket are disposedand and placed in linked list statechanged
     * we can freeing memory in cycle by next_statechanged,
     */
    while ((sock = loop->_statechanged.head) != NULL) {
        loop->_statechanged.head = sock->_next_statechanged;
        FUNC2(sock);
    }

    /* dispose backend-specific data */
    FUNC1(loop);

    /* lastly we need to free loop memory */
    FUNC4(loop->_timeouts);
    FUNC2(loop);
}