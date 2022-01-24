#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_9__ {scalar_t__ err; TYPE_2__* data; } ;
typedef  TYPE_1__ redisAsyncContext ;
struct TYPE_10__ {scalar_t__ state; scalar_t__ connect_timeout; int /*<<< orphan*/  _timeout_entry; int /*<<< orphan*/  loop; TYPE_1__* _redis; } ;
typedef  TYPE_2__ h2o_redis_client_t ;

/* Variables and functions */
 scalar_t__ H2O_REDIS_CONNECTION_STATE_CLOSED ; 
 scalar_t__ H2O_REDIS_CONNECTION_STATE_CONNECTING ; 
 scalar_t__ REDIS_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  h2o_redis_error_connection ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  on_connect ; 
 int /*<<< orphan*/  on_disconnect ; 
 TYPE_1__* FUNC4 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 

void FUNC7(h2o_redis_client_t *client, const char *host, uint16_t port)
{
    if (client->state != H2O_REDIS_CONNECTION_STATE_CLOSED) {
        return;
    }

    redisAsyncContext *redis = FUNC4(host, port);
    if (redis == NULL) {
        FUNC2("no memory");
    }

    client->_redis = redis;
    client->_redis->data = client;
    client->state = H2O_REDIS_CONNECTION_STATE_CONNECTING;

    FUNC0(redis, client->loop);
    FUNC5(redis, on_connect);
    FUNC6(redis, on_disconnect);

    if (redis->err != REDIS_OK) {
        /* some connection failures can be detected at this time */
        FUNC1(client, h2o_redis_error_connection);
        return;
    }

    if (client->connect_timeout != 0)
        FUNC3(client->loop, client->connect_timeout, &client->_timeout_entry);
}