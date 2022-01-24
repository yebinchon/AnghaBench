#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char* path; } ;
struct TYPE_5__ {int port; char* host; char* ca_cert; char* cert; char* key; } ;
struct TYPE_4__ {char* host; int port; } ;
struct config {int /*<<< orphan*/  type; TYPE_3__ unix_sock; TYPE_2__ ssl; TYPE_1__ tcp; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONN_FD ; 
 int /*<<< orphan*/  CONN_SSL ; 
 int /*<<< orphan*/  CONN_TCP ; 
 int /*<<< orphan*/  CONN_UNIX ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIG_IGN ; 
 void* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int fails ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct config) ; 
 int /*<<< orphan*/  FUNC7 (struct config) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct config) ; 
 int /*<<< orphan*/  FUNC10 (struct config) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (struct config) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (struct config) ; 

int FUNC16(int argc, char **argv) {
    struct config cfg = {
        .tcp = {
            .host = "127.0.0.1",
            .port = 6379
        },
        .unix_sock = {
            .path = "/tmp/redis.sock"
        }
    };
    int throughput = 1;
    int test_inherit_fd = 1;

    /* Ignore broken pipe signal (for I/O error tests). */
    FUNC4(SIGPIPE, SIG_IGN);

    /* Parse command line options. */
    argv++; argc--;
    while (argc) {
        if (argc >= 2 && !FUNC5(argv[0],"-h")) {
            argv++; argc--;
            cfg.tcp.host = argv[0];
        } else if (argc >= 2 && !FUNC5(argv[0],"-p")) {
            argv++; argc--;
            cfg.tcp.port = FUNC0(argv[0]);
        } else if (argc >= 2 && !FUNC5(argv[0],"-s")) {
            argv++; argc--;
            cfg.unix_sock.path = argv[0];
        } else if (argc >= 1 && !FUNC5(argv[0],"--skip-throughput")) {
            throughput = 0;
        } else if (argc >= 1 && !FUNC5(argv[0],"--skip-inherit-fd")) {
            test_inherit_fd = 0;
#ifdef HIREDIS_TEST_SSL
        } else if (argc >= 2 && !strcmp(argv[0],"--ssl-port")) {
            argv++; argc--;
            cfg.ssl.port = atoi(argv[0]);
        } else if (argc >= 2 && !strcmp(argv[0],"--ssl-host")) {
            argv++; argc--;
            cfg.ssl.host = argv[0];
        } else if (argc >= 2 && !strcmp(argv[0],"--ssl-ca-cert")) {
            argv++; argc--;
            cfg.ssl.ca_cert  = argv[0];
        } else if (argc >= 2 && !strcmp(argv[0],"--ssl-cert")) {
            argv++; argc--;
            cfg.ssl.cert = argv[0];
        } else if (argc >= 2 && !strcmp(argv[0],"--ssl-key")) {
            argv++; argc--;
            cfg.ssl.key = argv[0];
#endif
        } else {
            FUNC2(stderr, "Invalid argument: %s\n", argv[0]);
            FUNC1(1);
        }
        argv++; argc--;
    }

    FUNC11();
    FUNC14();
    FUNC8();
    FUNC12();

    FUNC3("\nTesting against TCP connection (%s:%d):\n", cfg.tcp.host, cfg.tcp.port);
    cfg.type = CONN_TCP;
    FUNC7(cfg);
    FUNC9(cfg);
    FUNC10(cfg);
    FUNC13(cfg);
    FUNC6(cfg);
    if (throughput) FUNC15(cfg);

    FUNC3("\nTesting against Unix socket connection (%s):\n", cfg.unix_sock.path);
    cfg.type = CONN_UNIX;
    FUNC7(cfg);
    FUNC9(cfg);
    FUNC10(cfg);
    if (throughput) FUNC15(cfg);

#ifdef HIREDIS_TEST_SSL
    if (cfg.ssl.port && cfg.ssl.host) {
        printf("\nTesting against SSL connection (%s:%d):\n", cfg.ssl.host, cfg.ssl.port);
        cfg.type = CONN_SSL;

        test_blocking_connection(cfg);
        test_blocking_connection_timeouts(cfg);
        test_blocking_io_errors(cfg);
        test_invalid_timeout_errors(cfg);
        test_append_formatted_commands(cfg);
        if (throughput) test_throughput(cfg);
    }
#endif

    if (test_inherit_fd) {
        FUNC3("\nTesting against inherited fd (%s):\n", cfg.unix_sock.path);
        cfg.type = CONN_FD;
        FUNC7(cfg);
    }


    if (fails) {
        FUNC3("*** %d TESTS FAILED ***\n", fails);
        return 1;
    }

    FUNC3("ALL TESTS PASSED\n");
    return 0;
}