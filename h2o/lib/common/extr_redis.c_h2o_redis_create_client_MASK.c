#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  _timeout_entry; int /*<<< orphan*/  state; int /*<<< orphan*/ * loop; } ;
typedef  TYPE_1__ h2o_redis_client_t ;
typedef  int /*<<< orphan*/  h2o_loop_t ;

/* Variables and functions */
 int /*<<< orphan*/  H2O_REDIS_CONNECTION_STATE_CLOSED ; 
 TYPE_1__* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  on_connect_timeout ; 

h2o_redis_client_t *FUNC3(h2o_loop_t *loop, size_t sz)
{
    h2o_redis_client_t *client = FUNC0(sz);
    FUNC2(client, 0, sz);

    client->loop = loop;
    client->state = H2O_REDIS_CONNECTION_STATE_CLOSED;
    FUNC1(&client->_timeout_entry, on_connect_timeout);

    return client;
}