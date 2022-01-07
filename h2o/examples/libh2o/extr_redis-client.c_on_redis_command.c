
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int redisReply ;


 int dump_reply (int *,int ) ;
 int fprintf (int ,char*,char const*) ;
 int stderr ;

__attribute__((used)) static void on_redis_command(redisReply *reply, void *cb_data, const char *errstr)
{
    if (errstr != ((void*)0)) {
        fprintf(stderr, "redis error: %s\n", errstr);
        return;
    }
    if (reply != ((void*)0)) {
        dump_reply(reply, 0);
    }
}
