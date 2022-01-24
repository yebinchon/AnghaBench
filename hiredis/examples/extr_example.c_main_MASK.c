#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct timeval {int member_0; int member_1; } ;
struct TYPE_11__ {char* str; scalar_t__ type; unsigned int elements; TYPE_1__** element; int /*<<< orphan*/  integer; } ;
typedef  TYPE_2__ redisReply ;
struct TYPE_12__ {char* errstr; scalar_t__ err; } ;
typedef  TYPE_3__ redisContext ;
struct TYPE_10__ {char* str; } ;

/* Variables and functions */
 scalar_t__ REDIS_REPLY_ARRAY ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 TYPE_2__* FUNC4 (TYPE_3__*,char*,...) ; 
 TYPE_3__* FUNC5 (char const*,struct timeval) ; 
 TYPE_3__* FUNC6 (char const*,int,struct timeval) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,unsigned int) ; 

int FUNC9(int argc, char **argv) {
    unsigned int j, isunix = 0;
    redisContext *c;
    redisReply *reply;
    const char *hostname = (argc > 1) ? argv[1] : "127.0.0.1";

    if (argc > 2) {
        if (*argv[2] == 'u' || *argv[2] == 'U') {
            isunix = 1;
            /* in this case, host is the path to the unix socket */
            FUNC3("Will connect to unix socket @%s\n", hostname);
        }
    }

    int port = (argc > 2) ? FUNC0(argv[2]) : 6379;

    struct timeval timeout = { 1, 500000 }; // 1.5 seconds
    if (isunix) {
        c = FUNC5(hostname, timeout);
    } else {
        c = FUNC6(hostname, port, timeout);
    }
    if (c == NULL || c->err) {
        if (c) {
            FUNC3("Connection error: %s\n", c->errstr);
            FUNC7(c);
        } else {
            FUNC3("Connection error: can't allocate redis context\n");
        }
        FUNC1(1);
    }

    /* PING server */
    reply = FUNC4(c,"PING");
    FUNC3("PING: %s\n", reply->str);
    FUNC2(reply);

    /* Set a key */
    reply = FUNC4(c,"SET %s %s", "foo", "hello world");
    FUNC3("SET: %s\n", reply->str);
    FUNC2(reply);

    /* Set a key using binary safe API */
    reply = FUNC4(c,"SET %b %b", "bar", (size_t) 3, "hello", (size_t) 5);
    FUNC3("SET (binary API): %s\n", reply->str);
    FUNC2(reply);

    /* Try a GET and two INCR */
    reply = FUNC4(c,"GET foo");
    FUNC3("GET foo: %s\n", reply->str);
    FUNC2(reply);

    reply = FUNC4(c,"INCR counter");
    FUNC3("INCR counter: %lld\n", reply->integer);
    FUNC2(reply);
    /* again ... */
    reply = FUNC4(c,"INCR counter");
    FUNC3("INCR counter: %lld\n", reply->integer);
    FUNC2(reply);

    /* Create a list of numbers, from 0 to 9 */
    reply = FUNC4(c,"DEL mylist");
    FUNC2(reply);
    for (j = 0; j < 10; j++) {
        char buf[64];

        FUNC8(buf,64,"%u",j);
        reply = FUNC4(c,"LPUSH mylist element-%s", buf);
        FUNC2(reply);
    }

    /* Let's check what we have inside the list */
    reply = FUNC4(c,"LRANGE mylist 0 -1");
    if (reply->type == REDIS_REPLY_ARRAY) {
        for (j = 0; j < reply->elements; j++) {
            FUNC3("%u) %s\n", j, reply->element[j]->str);
        }
    }
    FUNC2(reply);

    /* Disconnects and frees the context */
    FUNC7(c);

    return 0;
}