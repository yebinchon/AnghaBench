
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int client ;
 int fprintf (int ,char*) ;
 int h2o_redis_command (int ,int ,char*,char*) ;
 int on_redis_command ;
 int stderr ;

__attribute__((used)) static void on_redis_connect(void)
{
    fprintf(stderr, "connected to redis\n");
    h2o_redis_command(client, on_redis_command, "get server info", "INFO");
}
