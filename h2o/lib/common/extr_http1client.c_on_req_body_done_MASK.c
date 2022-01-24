#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct st_h2o_http1client_t {int /*<<< orphan*/  sock; scalar_t__ _body_buf_is_done; int /*<<< orphan*/  super; TYPE_1__* _body_buf; TYPE_4__* _body_buf_in_flight; int /*<<< orphan*/  (* proceed_req ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_6__ {struct st_h2o_http1client_t* data; } ;
typedef  TYPE_2__ h2o_socket_t ;
typedef  int /*<<< orphan*/  h2o_send_state_t ;
struct TYPE_7__ {int /*<<< orphan*/  size; } ;
struct TYPE_5__ {scalar_t__ size; } ;

/* Variables and functions */
 int /*<<< orphan*/  H2O_SEND_STATE_FINAL ; 
 int /*<<< orphan*/  H2O_SEND_STATE_IN_PROGRESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(h2o_socket_t *sock, const char *err)
{
    struct st_h2o_http1client_t *client = sock->data;

    if (client->_body_buf_in_flight != NULL) {
        if (err == NULL) {
            h2o_send_state_t send_state = client->_body_buf_is_done ? H2O_SEND_STATE_FINAL : H2O_SEND_STATE_IN_PROGRESS;
            client->proceed_req(&client->super, client->_body_buf_in_flight->size, send_state);
        }
        FUNC1(&client->_body_buf_in_flight, client->_body_buf_in_flight->size);
    }

    if (err) {
        FUNC3(client->sock, err);
        return;
    }

    if (client->_body_buf != NULL && client->_body_buf->size != 0) {
        FUNC0(&client->super, FUNC2(NULL, 0), client->_body_buf_is_done);
    } else if (client->_body_buf_is_done) {
        FUNC3(client->sock, NULL);
    }
}