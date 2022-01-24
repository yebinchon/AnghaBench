#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  _timeout; TYPE_1__* connpool; } ;
struct st_h2o_http1client_t {int /*<<< orphan*/ * _body_buf_in_flight; int /*<<< orphan*/ * _body_buf; TYPE_2__ super; TYPE_4__* sock; scalar_t__ _do_keepalive; } ;
struct TYPE_11__ {int /*<<< orphan*/  size; } ;
struct TYPE_10__ {TYPE_6__* input; } ;
struct TYPE_9__ {scalar_t__ timeout; } ;
struct TYPE_7__ {TYPE_3__* socketpool; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct st_h2o_http1client_t*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,TYPE_4__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct st_h2o_http1client_t *client)
{
    if (client->sock != NULL) {
        if (client->super.connpool != NULL && client->_do_keepalive && client->super.connpool->socketpool->timeout > 0) {
            /* we do not send pipelined requests, and thus can trash all the received input at the end of the request */
            FUNC1(&client->sock->input, client->sock->input->size);
            FUNC4(client->super.connpool->socketpool, client->sock);
        } else {
            FUNC3(client->sock);
        }
    }
    if (FUNC5(&client->super._timeout))
        FUNC6(&client->super._timeout);
    if (client->_body_buf != NULL)
        FUNC2(&client->_body_buf);
    if (client->_body_buf_in_flight != NULL)
        FUNC2(&client->_body_buf_in_flight);
    FUNC0(client);
}