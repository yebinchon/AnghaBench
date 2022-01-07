
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__** element; int type; } ;
typedef TYPE_2__ redisReply ;
struct TYPE_10__ {int type; int data; int (* cb ) (TYPE_2__*,int ,char const*) ;} ;
typedef TYPE_3__ h2o_redis_command_t ;
struct TYPE_8__ {int len; int str; } ;




 int REDIS_REPLY_ARRAY ;
 int dispose_command (TYPE_3__*) ;
 int strncasecmp (int ,char*,int ) ;
 int stub1 (TYPE_2__*,int ,char const*) ;

__attribute__((used)) static void handle_reply(h2o_redis_command_t *command, redisReply *reply, const char *errstr)
{
    if (command->cb != ((void*)0))
        command->cb(reply, command->data, errstr);

    switch (command->type) {
    case 128:
    case 129:
        if (reply != ((void*)0) && reply->type == REDIS_REPLY_ARRAY) {
            char *unsub = command->type == 128 ? "unsubscribe" : "punsubscribe";
            if (strncasecmp(reply->element[0]->str, unsub, reply->element[0]->len) == 0) {
                dispose_command(command);
            } else {

            }
        } else {
            dispose_command(command);
        }
        break;
    default:
        dispose_command(command);
    }
}
