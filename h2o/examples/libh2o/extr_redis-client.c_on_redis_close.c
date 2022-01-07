
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int client ;
 int fprintf (int ,char*,...) ;
 int h2o_redis_connect (int ,int ,int ) ;
 int host ;
 int port ;
 int stderr ;
 int usleep (int) ;

__attribute__((used)) static void on_redis_close(const char *errstr)
{
    if (errstr == ((void*)0)) {
        fprintf(stderr, "disconnected from redis\n");
    } else {
        fprintf(stderr, "redis connection failure: %s\n", errstr);

        usleep(1000000);
        h2o_redis_connect(client, host, port);
    }
}
