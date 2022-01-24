#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct timeval {int member_0; int member_1; } ;
struct TYPE_14__ {char* str; scalar_t__ type; unsigned int elements; TYPE_1__** element; int /*<<< orphan*/  integer; } ;
typedef  TYPE_2__ redisReply ;
struct TYPE_15__ {struct timeval* timeout; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_3__ redisOptions ;
struct TYPE_16__ {char* errstr; scalar_t__ err; } ;
typedef  TYPE_4__ redisContext ;
struct TYPE_13__ {char* str; } ;

/* Variables and functions */
 scalar_t__ REDIS_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,char const*,int) ; 
 scalar_t__ REDIS_REPLY_ARRAY ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 TYPE_2__* FUNC5 (TYPE_4__*,char*,...) ; 
 TYPE_4__* FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 scalar_t__ FUNC8 (TYPE_4__*,char const*,char const*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,unsigned int) ; 

int FUNC10(int argc, char **argv) {
    unsigned int j;
    redisContext *c;
    redisReply *reply;
    if (argc < 4) {
        FUNC4("Usage: %s <host> <port> <cert> <key> [ca]\n", argv[0]);
        FUNC2(1);
    }
    const char *hostname = (argc > 1) ? argv[1] : "127.0.0.1";
    int port = FUNC1(argv[2]);
    const char *cert = argv[3];
    const char *key = argv[4];
    const char *ca = argc > 4 ? argv[5] : NULL;

    struct timeval tv = { 1, 500000 }; // 1.5 seconds
    redisOptions options = {0};
    FUNC0(&options, hostname, port);
    options.timeout = &tv;
    c = FUNC6(&options);

    if (c == NULL || c->err) {
        if (c) {
            FUNC4("Connection error: %s\n", c->errstr);
            FUNC7(c);
        } else {
            FUNC4("Connection error: can't allocate redis context\n");
        }
        FUNC2(1);
    }

    if (FUNC8(c, ca, cert, key, "sni") != REDIS_OK) {
        FUNC4("Couldn't initialize SSL!\n");
        FUNC4("Error: %s\n", c->errstr);
        FUNC7(c);
        FUNC2(1);
    }

    /* PING server */
    reply = FUNC5(c,"PING");
    FUNC4("PING: %s\n", reply->str);
    FUNC3(reply);

    /* Set a key */
    reply = FUNC5(c,"SET %s %s", "foo", "hello world");
    FUNC4("SET: %s\n", reply->str);
    FUNC3(reply);

    /* Set a key using binary safe API */
    reply = FUNC5(c,"SET %b %b", "bar", (size_t) 3, "hello", (size_t) 5);
    FUNC4("SET (binary API): %s\n", reply->str);
    FUNC3(reply);

    /* Try a GET and two INCR */
    reply = FUNC5(c,"GET foo");
    FUNC4("GET foo: %s\n", reply->str);
    FUNC3(reply);

    reply = FUNC5(c,"INCR counter");
    FUNC4("INCR counter: %lld\n", reply->integer);
    FUNC3(reply);
    /* again ... */
    reply = FUNC5(c,"INCR counter");
    FUNC4("INCR counter: %lld\n", reply->integer);
    FUNC3(reply);

    /* Create a list of numbers, from 0 to 9 */
    reply = FUNC5(c,"DEL mylist");
    FUNC3(reply);
    for (j = 0; j < 10; j++) {
        char buf[64];

        FUNC9(buf,64,"%u",j);
        reply = FUNC5(c,"LPUSH mylist element-%s", buf);
        FUNC3(reply);
    }

    /* Let's check what we have inside the list */
    reply = FUNC5(c,"LRANGE mylist 0 -1");
    if (reply->type == REDIS_REPLY_ARRAY) {
        for (j = 0; j < reply->elements; j++) {
            FUNC4("%u) %s\n", j, reply->element[j]->str);
        }
    }
    FUNC3(reply);

    /* Disconnects and frees the context */
    FUNC7(c);

    return 0;
}