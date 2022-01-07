
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * sds ;
typedef int h2o_redis_command_t ;
typedef int h2o_redis_command_cb ;
typedef int h2o_redis_client_t ;


 int * create_command (int *,int ,void*,int ) ;
 int detect_command_type (int *) ;
 int redisFormatSdsCommandArgv (int **,int,char const**,size_t const*) ;
 int sdsfree (int *) ;
 int send_command (int *,int *,int *,int) ;

h2o_redis_command_t *h2o_redis_command_argv(h2o_redis_client_t *client, h2o_redis_command_cb cb, void *cb_data, int argc,
                                            const char **argv, const size_t *argvlen)
{
    sds sdscmd;
    int len;
    len = redisFormatSdsCommandArgv(&sdscmd, argc, argv, argvlen);
    if (len < 0) {
        sdscmd = ((void*)0);
        len = 0;
    }

    h2o_redis_command_t *command = create_command(client, cb, cb_data, detect_command_type(sdscmd));
    send_command(client, command, sdscmd, len);
    sdsfree(sdscmd);
    return command;
}
