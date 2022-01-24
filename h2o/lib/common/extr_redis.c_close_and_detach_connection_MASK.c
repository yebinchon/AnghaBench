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
struct TYPE_5__ {int /*<<< orphan*/  _timeout_entry; TYPE_1__* _redis; int /*<<< orphan*/  (* on_close ) (char const*) ;int /*<<< orphan*/  state; } ;
typedef  TYPE_2__ h2o_redis_client_t ;
struct TYPE_4__ {int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int /*<<< orphan*/  H2O_REDIS_CONNECTION_STATE_CLOSED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 

__attribute__((used)) static void FUNC3(h2o_redis_client_t *client, const char *errstr)
{
    FUNC0(client->_redis != NULL);
    client->state = H2O_REDIS_CONNECTION_STATE_CLOSED;
    if (client->on_close != NULL)
        client->on_close(errstr);

    client->_redis->data = NULL;
    client->_redis = NULL;
    FUNC1(&client->_timeout_entry);
}