#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ type; } ;
typedef  TYPE_1__ h2o_redis_command_t ;
struct TYPE_8__ {scalar_t__ state; int /*<<< orphan*/  _redis; } ;
typedef  TYPE_2__ h2o_redis_client_t ;

/* Variables and functions */
 scalar_t__ H2O_REDIS_COMMAND_TYPE_MONITOR ; 
 scalar_t__ H2O_REDIS_CONNECTION_STATE_CLOSED ; 
 int REDIS_OK ; 
 char* h2o_redis_error_connection ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  on_command ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,char const*,size_t) ; 

__attribute__((used)) static void FUNC2(h2o_redis_client_t *client, h2o_redis_command_t *command, const char *cmd, size_t len)
{
    if (cmd == NULL) {
        FUNC0(command, NULL, "Failed to create command");
        return;
    }

    if (client->state == H2O_REDIS_CONNECTION_STATE_CLOSED) {
        FUNC0(command, NULL, h2o_redis_error_connection);
        return;
    }

    if (command->type == H2O_REDIS_COMMAND_TYPE_MONITOR) {
        /* monitor command implementation in hiredis asynchronous API is absolutely dangerous, so don't use it! */
        FUNC0(command, NULL, "Unsupported command");
        return;
    }

    int ret = FUNC1(client->_redis, on_command, command, cmd, len);
    if (ret != REDIS_OK) {
        FUNC0(command, NULL, "Failed to send command");
    }
}