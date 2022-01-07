
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
struct TYPE_13__ {char* path; } ;
struct TYPE_12__ {char* host; } ;
struct config {TYPE_2__ unix_sock; TYPE_1__ tcp; } ;
typedef scalar_t__ ssize_t ;
struct TYPE_14__ {scalar_t__ type; int str; } ;
typedef TYPE_3__ redisReply ;
struct TYPE_15__ {scalar_t__ err; int errstr; int fd; } ;
typedef TYPE_4__ redisContext ;


 scalar_t__ REDIS_ERR_IO ;
 scalar_t__ REDIS_REPLY_STATUS ;
 scalar_t__ REDIS_REPLY_STRING ;
 TYPE_4__* connect (struct config) ;
 int disconnect (TYPE_4__*,int ) ;
 int freeReplyObject (TYPE_3__*) ;
 scalar_t__ memcmp (int ,char*,int) ;
 TYPE_3__* redisCommand (TYPE_4__*,char*) ;
 int redisReconnect (TYPE_4__*) ;
 int redisSetTimeout (TYPE_4__*,struct timeval) ;
 scalar_t__ strcmp (int ,char*) ;
 int strlen (char const*) ;
 int test (char*) ;
 int test_cond (int) ;
 scalar_t__ write (int ,char const*,int ) ;

__attribute__((used)) static void test_blocking_connection_timeouts(struct config config) {
    redisContext *c;
    redisReply *reply;
    ssize_t s;
    const char *cmd = "DEBUG SLEEP 3\r\n";
    struct timeval tv;

    c = connect(config);
    test("Successfully completes a command when the timeout is not exceeded: ");
    reply = redisCommand(c,"SET foo fast");
    freeReplyObject(reply);
    tv.tv_sec = 0;
    tv.tv_usec = 10000;
    redisSetTimeout(c, tv);
    reply = redisCommand(c, "GET foo");
    test_cond(reply != ((void*)0) && reply->type == REDIS_REPLY_STRING && memcmp(reply->str, "fast", 4) == 0);
    freeReplyObject(reply);
    disconnect(c, 0);

    c = connect(config);
    test("Does not return a reply when the command times out: ");
    s = write(c->fd, cmd, strlen(cmd));
    tv.tv_sec = 0;
    tv.tv_usec = 10000;
    redisSetTimeout(c, tv);
    reply = redisCommand(c, "GET foo");
    test_cond(s > 0 && reply == ((void*)0) && c->err == REDIS_ERR_IO && strcmp(c->errstr, "Resource temporarily unavailable") == 0);
    freeReplyObject(reply);

    test("Reconnect properly reconnects after a timeout: ");
    redisReconnect(c);
    reply = redisCommand(c, "PING");
    test_cond(reply != ((void*)0) && reply->type == REDIS_REPLY_STATUS && strcmp(reply->str, "PONG") == 0);
    freeReplyObject(reply);

    test("Reconnect properly uses owned parameters: ");
    config.tcp.host = "foo";
    config.unix_sock.path = "foo";
    redisReconnect(c);
    reply = redisCommand(c, "PING");
    test_cond(reply != ((void*)0) && reply->type == REDIS_REPLY_STATUS && strcmp(reply->str, "PONG") == 0);
    freeReplyObject(reply);

    disconnect(c, 0);
}
