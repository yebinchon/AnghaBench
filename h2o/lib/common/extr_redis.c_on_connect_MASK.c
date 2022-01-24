#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ data; } ;
typedef  TYPE_1__ redisAsyncContext ;
struct TYPE_6__ {int /*<<< orphan*/  (* on_connect ) () ;int /*<<< orphan*/  state; int /*<<< orphan*/  _timeout_entry; } ;
typedef  TYPE_2__ h2o_redis_client_t ;

/* Variables and functions */
 int /*<<< orphan*/  H2O_REDIS_CONNECTION_STATE_CONNECTED ; 
 int REDIS_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  h2o_redis_error_connection ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void FUNC3(const redisAsyncContext *redis, int status)
{
    h2o_redis_client_t *client = (h2o_redis_client_t *)redis->data;
    if (client == NULL)
        return;

    if (status != REDIS_OK) {
        FUNC0(client, h2o_redis_error_connection);
        return;
    }
    FUNC1(&client->_timeout_entry);

    client->state = H2O_REDIS_CONNECTION_STATE_CONNECTED;
    if (client->on_connect != NULL)
        client->on_connect();
}