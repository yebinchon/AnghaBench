
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int _command_timeout; } ;
typedef TYPE_1__ h2o_redis_command_t ;


 int free (TYPE_1__*) ;
 int h2o_timer_unlink (int *) ;

__attribute__((used)) static void dispose_command(h2o_redis_command_t *command)
{
    h2o_timer_unlink(&command->_command_timeout);
    free(command);
}
