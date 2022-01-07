
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ type; } ;
typedef TYPE_1__ h2o_redis_command_t ;
struct TYPE_8__ {scalar_t__ state; int _redis; } ;
typedef TYPE_2__ h2o_redis_client_t ;


 scalar_t__ H2O_REDIS_COMMAND_TYPE_MONITOR ;
 scalar_t__ H2O_REDIS_CONNECTION_STATE_CLOSED ;
 int REDIS_OK ;
 char* h2o_redis_error_connection ;
 int handle_reply (TYPE_1__*,int *,char*) ;
 int on_command ;
 int redisAsyncFormattedCommand (int ,int ,TYPE_1__*,char const*,size_t) ;

__attribute__((used)) static void send_command(h2o_redis_client_t *client, h2o_redis_command_t *command, const char *cmd, size_t len)
{
    if (cmd == ((void*)0)) {
        handle_reply(command, ((void*)0), "Failed to create command");
        return;
    }

    if (client->state == H2O_REDIS_CONNECTION_STATE_CLOSED) {
        handle_reply(command, ((void*)0), h2o_redis_error_connection);
        return;
    }

    if (command->type == H2O_REDIS_COMMAND_TYPE_MONITOR) {

        handle_reply(command, ((void*)0), "Unsupported command");
        return;
    }

    int ret = redisAsyncFormattedCommand(client->_redis, on_command, command, cmd, len);
    if (ret != REDIS_OK) {
        handle_reply(command, ((void*)0), "Failed to send command");
    }
}
