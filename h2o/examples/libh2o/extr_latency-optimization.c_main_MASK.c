#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct option {char* member_0; char member_3; int /*<<< orphan*/ * member_2; int /*<<< orphan*/  const member_1; } ;
struct addrinfo {int /*<<< orphan*/  ai_addrlen; int /*<<< orphan*/  ai_addr; int /*<<< orphan*/  ai_flags; int /*<<< orphan*/  ai_protocol; int /*<<< orphan*/  ai_socktype; } ;
typedef  int /*<<< orphan*/  reuseaddr_flag ;
typedef  int /*<<< orphan*/  hints ;
typedef  int /*<<< orphan*/  h2o_socket_t ;
struct TYPE_2__ {int /*<<< orphan*/  max_cwnd; int /*<<< orphan*/  min_rtt; } ;
typedef  int /*<<< orphan*/  EC_KEY ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AI_ADDRCONFIG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int /*<<< orphan*/  H2O_SOCKET_FLAG_DONT_READ ; 
 int /*<<< orphan*/  INT32_MAX ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int NID_X9_62_prime256v1 ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SOMAXCONN ; 
 int /*<<< orphan*/  SO_REUSEADDR ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  SSL_FILETYPE_PEM ; 
 int SSL_OP_ALL ; 
 int SSL_OP_NO_SSLv2 ; 
 int SSL_OP_NO_SSLv3 ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  UV_RUN_DEFAULT ; 
 scalar_t__ FUNC14 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC17 (int) ; 
 int FUNC18 (char*,char*,struct addrinfo*,struct addrinfo**) ; 
 int FUNC19 (int,char**,char*,struct option const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC22 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* host ; 
 TYPE_1__ latopt_cond ; 
 scalar_t__ FUNC25 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  loop ; 
 int /*<<< orphan*/  FUNC26 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 int mode_server ; 
#define  no_argument 129 
 int /*<<< orphan*/  on_accept ; 
 int /*<<< orphan*/  on_connect ; 
 int /*<<< orphan*/  optarg ; 
 int optind ; 
 char* port ; 
#define  required_argument 128 
 scalar_t__ FUNC27 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/ * sock ; 
 int FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC29 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ssl_ctx ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC30 (char*,char) ; 
 char* FUNC31 (char*) ; 
 char* FUNC32 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (char*) ; 
 int /*<<< orphan*/  FUNC34 () ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  write_block_size ; 

int FUNC36(int argc, char **argv)
{
    static const struct option longopts[] = {{"listen", no_argument, NULL, 'l'},
                                             {"reverse-role", no_argument, NULL, 'r'},
                                             {"tls", no_argument, NULL, 't'},
                                             {"block-size", no_argument, NULL, 'b'},
                                             {"min-rtt", required_argument, NULL, 'R'},
                                             {"max-cwnd", required_argument, NULL, 'c'},
                                             {}};
    int opt_ch, mode_listen = 0, mode_reverse_role = 0, mode_tls = 0;
    struct addrinfo hints, *res = NULL;
    int err;

    while ((opt_ch = FUNC19(argc, argv, "lrtb:R:c:", longopts, NULL)) != -1) {
        switch (opt_ch) {
        case 'l':
            mode_listen = 1;
            break;
        case 'r':
            mode_reverse_role = 1;
            break;
        case 't':
            mode_tls = 1;
            break;
        case 'b':
            if (FUNC29(optarg, "%zu", &write_block_size) != 1) {
                FUNC16(stderr, "write block size (-b) must be a non-negative number of octets\n");
                FUNC15(1);
            }
            break;
        case 'R':
            if (FUNC29(optarg, "%u", &latopt_cond.min_rtt) != 1) {
                FUNC16(stderr, "min RTT (-m) must be a non-negative number in milliseconds\n");
                FUNC15(1);
            }
            break;
        case 'c':
            if (FUNC29(optarg, "%u", &latopt_cond.max_cwnd) != 1) {
                FUNC16(stderr, "max CWND size must be a non-negative number of octets\n");
                FUNC15(1);
            }
            break;
        default:
            FUNC33(argv[0]);
            break;
        }
    }
    mode_server = mode_listen;
    if (mode_reverse_role)
        mode_server = !mode_server;

    if (argc == optind) {
        FUNC33(argv[0]);
    } else {
        char *hostport = argv[optind], *colon;
        if ((colon = FUNC30(hostport, ':')) != NULL) {
            hostport = argv[optind];
            host = FUNC31(hostport);
            host[colon - hostport] = '\0';
            port = colon + 1;
        } else {
            host = "0.0.0.0";
            port = argv[optind];
        }
    }

    if (mode_tls) {
        FUNC11();
        FUNC10();
        FUNC3();
        if (mode_server) {
            ssl_ctx = FUNC4(FUNC13());
            FUNC9(ssl_ctx, "examples/h2o/server.crt");
            FUNC8(ssl_ctx, "examples/h2o/server.key", SSL_FILETYPE_PEM);
        } else {
            ssl_ctx = FUNC4(FUNC12());
        }
        int nid = NID_X9_62_prime256v1;
        EC_KEY *key = FUNC1(nid);
        if (key == NULL) {
            FUNC16(stderr, "Failed to create curve \"%s\"\n", FUNC2(nid));
            FUNC15(1);
        }
        FUNC7(ssl_ctx, key);
        FUNC0(key);
        FUNC6(ssl_ctx, SSL_OP_ALL | SSL_OP_NO_SSLv2 | SSL_OP_NO_SSLv3);
        FUNC5(ssl_ctx, "ECDHE-RSA-AES128-GCM-SHA256");
    }

#if H2O_USE_LIBUV
    loop = uv_loop_new();
#else
    loop = FUNC20();
#endif

    /* resolve host:port (FIXME use the function supplied by the loop) */
    FUNC26(&hints, 0, sizeof(hints));
    hints.ai_socktype = SOCK_STREAM;
    hints.ai_protocol = IPPROTO_TCP;
    hints.ai_flags = AI_ADDRCONFIG;
    if ((err = FUNC18(host, port, &hints, &res)) != 0) {
        FUNC16(stderr, "failed to resolve %s:%s:%s\n", host, port, FUNC17(err));
        FUNC15(1);
    }

    if (mode_listen) {
        int fd, reuseaddr_flag = 1;
        if ((fd = FUNC28(AF_INET, SOCK_STREAM, 0)) == -1 ||
            FUNC27(fd, SOL_SOCKET, SO_REUSEADDR, &reuseaddr_flag, sizeof(reuseaddr_flag)) != 0 ||
            FUNC14(fd, res->ai_addr, res->ai_addrlen) != 0 || FUNC25(fd, SOMAXCONN) != 0) {
            FUNC16(stderr, "failed to listen to %s:%s:%s\n", host, port, FUNC32(errno));
            FUNC15(1);
        }
        h2o_socket_t *listen_sock = FUNC22(loop, fd, H2O_SOCKET_FLAG_DONT_READ);
        FUNC24(listen_sock, on_accept);
    } else {
        if ((sock = FUNC23(loop, res->ai_addr, res->ai_addrlen, on_connect)) == NULL) {
            FUNC16(stderr, "failed to create socket:%s\n", FUNC32(errno));
            FUNC15(1);
        }
    }

    while (1) {
#if H2O_USE_LIBUV
        uv_run(loop, UV_RUN_DEFAULT);
#else
        FUNC21(loop, INT32_MAX);
#endif
    }

    return 0;
}