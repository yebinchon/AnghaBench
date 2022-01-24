#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct sockaddr_storage {int /*<<< orphan*/  ss_family; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  reuseaddr ;
typedef  int /*<<< orphan*/  quicly_stream_t ;
struct TYPE_12__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ quicly_stream_open_t ;
typedef  int /*<<< orphan*/  quicly_conn_t ;
struct TYPE_13__ {int /*<<< orphan*/  super; } ;
typedef  TYPE_3__ ptls_openssl_sign_certificate_t ;
struct TYPE_11__ {scalar_t__ count; } ;
struct TYPE_14__ {int /*<<< orphan*/ * sign_certificate; TYPE_1__ certificates; int /*<<< orphan*/  cipher_suites; int /*<<< orphan*/  key_exchanges; int /*<<< orphan*/ * get_time; int /*<<< orphan*/  random_bytes; } ;
typedef  TYPE_4__ ptls_context_t ;
typedef  int /*<<< orphan*/  local ;
struct TYPE_15__ {TYPE_2__* stream_open; TYPE_4__* tls; } ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  EVP_PKEY ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_REUSEADDR ; 
 scalar_t__ FUNC2 (int,struct sockaddr*,int) ; 
 TYPE_5__ ctx ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC7 (int,char**,char*) ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct sockaddr_in*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  next_cid ; 
 int /*<<< orphan*/  on_stream_open ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  ptls_get_time ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC12 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  ptls_openssl_cipher_suites ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ptls_openssl_key_exchanges ; 
 int /*<<< orphan*/  ptls_openssl_random_bytes ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*) ; 
 int FUNC15 (int /*<<< orphan*/ **,TYPE_5__*,char*,int /*<<< orphan*/ *,struct sockaddr*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 TYPE_5__ quicly_spec_context ; 
 scalar_t__ FUNC17 (struct sockaddr*,int*,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC18 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (char*) ; 

int FUNC23(int argc, char **argv)
{
    ptls_openssl_sign_certificate_t sign_certificate;
    ptls_context_t tlsctx = {
        .random_bytes = ptls_openssl_random_bytes,
        .get_time = &ptls_get_time,
        .key_exchanges = ptls_openssl_key_exchanges,
        .cipher_suites = ptls_openssl_cipher_suites,
    };
    quicly_stream_open_t stream_open = {on_stream_open};
    char *host = "127.0.0.1", *port = "4433";
    struct sockaddr_storage sa;
    socklen_t salen;
    int ch, fd;

    /* setup quic context */
    ctx = quicly_spec_context;
    ctx.tls = &tlsctx;
    FUNC14(ctx.tls);
    ctx.stream_open = &stream_open;

    /* resolve command line options and arguments */
    while ((ch = FUNC7(argc, argv, "c:k:p:h")) != -1) {
        switch (ch) {
        case 'c': /* load certificate chain */ {
            int ret;
            if ((ret = FUNC12(&tlsctx, optarg)) != 0) {
                FUNC6(stderr, "failed to load certificates from file %s:%d\n", optarg, ret);
                FUNC3(1);
            }
        } break;
        case 'k': /* load private key */ {
            FILE *fp;
            if ((fp = FUNC5(optarg, "r")) == NULL) {
                FUNC6(stderr, "failed to open file:%s:%s\n", optarg, FUNC21(errno));
                FUNC3(1);
            }
            EVP_PKEY *pkey = FUNC1(fp, NULL, NULL, NULL);
            FUNC4(fp);
            if (pkey == NULL) {
                FUNC6(stderr, "failed to load private key from file:%s\n", optarg);
                FUNC3(1);
            }
            FUNC13(&sign_certificate, pkey);
            FUNC0(pkey);
            tlsctx.sign_certificate = &sign_certificate.super;
        } break;
        case 'p': /* port */
            port = optarg;
            break;
        case 'h': /* help */
            FUNC22(argv[0]);
            break;
        default:
            FUNC3(1);
            break;
        }
    }
    if ((tlsctx.certificates.count != 0) != (tlsctx.sign_certificate != NULL)) {
        FUNC6(stderr, "-c and -k options must be used together\n");
        FUNC3(1);
    }
    argc -= optind;
    argv += optind;
    if (argc != 0)
        host = *argv++;
    if (FUNC17((struct sockaddr *)&sa, &salen, host, port, AF_INET, SOCK_DGRAM, 0) != 0)
        FUNC3(1);

    /* open socket, on the specified port (as a server), or on any port (as a client) */
    if ((fd = FUNC20(sa.ss_family, SOCK_DGRAM, 0)) == -1) {
        FUNC10("socket(2) failed");
        FUNC3(1);
    }
    //fcntl(fd, F_SETFL, O_NONBLOCK);
    if (FUNC8()) {
        int reuseaddr = 1;
        FUNC19(fd, SOL_SOCKET, SO_REUSEADDR, &reuseaddr, sizeof(reuseaddr));
        if (FUNC2(fd, (struct sockaddr *)&sa, salen) != 0) {
            FUNC10("bind(2) failed");
            FUNC3(1);
        }
    } else {
        struct sockaddr_in local;
        FUNC9(&local, 0, sizeof(local));
        if (FUNC2(fd, (struct sockaddr *)&local, sizeof(local)) != 0) {
            FUNC10("bind(2) failed");
            FUNC3(1);
        }
    }

    quicly_conn_t *client = NULL;
    if (!FUNC8()) {
        /* initiate a connection, and open a stream */
        int ret;
        if ((ret = FUNC15(&client, &ctx, host, NULL, (struct sockaddr *)&sa, &next_cid, FUNC11(NULL, 0), NULL,
                                  NULL)) != 0) {
            FUNC6(stderr, "quicly_connect failed:%d\n", ret);
            FUNC3(1);
        }
        quicly_stream_t *stream; /* we retain the opened stream via the on_stream_open callback */
        FUNC16(client, &stream, 0);
    }

    /* enter the event loop with a connection object */
    return FUNC18(fd, client);
}