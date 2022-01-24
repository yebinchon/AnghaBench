#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct event_base {int dummy; } ;
struct TYPE_7__ {char* errstr; int /*<<< orphan*/  c; scalar_t__ err; } ;
typedef  TYPE_1__ redisAsyncContext ;

/* Variables and functions */
 scalar_t__ REDIS_OK ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  connectCallback ; 
 int /*<<< orphan*/  disconnectCallback ; 
 int /*<<< orphan*/  FUNC1 (struct event_base*) ; 
 struct event_base* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  getCallback ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,char*,char*,...) ; 
 TYPE_1__* FUNC7 (char const*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,struct event_base*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,char const*,char const*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 size_t FUNC13 (char const*) ; 

int FUNC14 (int argc, char **argv) {
    FUNC12(SIGPIPE, SIG_IGN);
    struct event_base *base = FUNC2();
    if (argc < 5) {
        FUNC4(stderr,
                "Usage: %s <key> <host> <port> <cert> <certKey> [ca]\n", argv[0]);
        FUNC3(1);
    }

    const char *value = argv[1];
    size_t nvalue = FUNC13(value);

    const char *hostname = argv[2];
    int port = FUNC0(argv[3]);

    const char *cert = argv[4];
    const char *certKey = argv[5];
    const char *caCert = argc > 5 ? argv[6] : NULL;

    redisAsyncContext *c = FUNC7(hostname, port);
    if (c->err) {
        /* Let *c leak for now... */
        FUNC5("Error: %s\n", c->errstr);
        return 1;
    }
    if (FUNC11(&c->c, caCert, cert, certKey, "sni") != REDIS_OK) {
        FUNC5("SSL Error!\n");
        FUNC3(1);
    }

    FUNC10(c,base);
    FUNC8(c,connectCallback);
    FUNC9(c,disconnectCallback);
    FUNC6(c, NULL, NULL, "SET key %b", value, nvalue);
    FUNC6(c, getCallback, (char*)"end-1", "GET key");
    FUNC1(base);
    return 0;
}