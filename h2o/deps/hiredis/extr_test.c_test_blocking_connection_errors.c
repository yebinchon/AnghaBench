
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ err; int errstr; } ;
typedef TYPE_1__ redisContext ;


 scalar_t__ REDIS_ERR_IO ;
 scalar_t__ REDIS_ERR_OTHER ;
 TYPE_1__* redisConnect (char*,int) ;
 TYPE_1__* redisConnectUnix (char*) ;
 int redisFree (TYPE_1__*) ;
 scalar_t__ strcmp (int ,char*) ;
 int test (char*) ;
 int test_cond (int) ;

__attribute__((used)) static void test_blocking_connection_errors(void) {
    redisContext *c;

    test("Returns error when host cannot be resolved: ");
    c = redisConnect((char*)"idontexist.test", 6379);
    test_cond(c->err == REDIS_ERR_OTHER &&
        (strcmp(c->errstr,"Name or service not known") == 0 ||
         strcmp(c->errstr,"Can't resolve: idontexist.test") == 0 ||
         strcmp(c->errstr,"nodename nor servname provided, or not known") == 0 ||
         strcmp(c->errstr,"No address associated with hostname") == 0 ||
         strcmp(c->errstr,"Temporary failure in name resolution") == 0 ||
         strcmp(c->errstr,"hostname nor servname provided, or not known") == 0 ||
         strcmp(c->errstr,"no address associated with name") == 0));
    redisFree(c);

    test("Returns error when the port is not open: ");
    c = redisConnect((char*)"localhost", 1);
    test_cond(c->err == REDIS_ERR_IO &&
        strcmp(c->errstr,"Connection refused") == 0);
    redisFree(c);

    test("Returns error when the unix_sock socket path doesn't accept connections: ");
    c = redisConnectUnix((char*)"/tmp/idontexist.sock");
    test_cond(c->err == REDIS_ERR_IO);
    redisFree(c);
}
