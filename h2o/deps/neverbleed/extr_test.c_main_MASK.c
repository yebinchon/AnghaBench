#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  neverbleed_t ;
typedef  int /*<<< orphan*/  SSL_CTX ;

/* Variables and functions */
 int NEVERBLEED_ERRBUF_SIZE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  SSL_FILETYPE_PEM ; 
 int SSL_OP_ALL ; 
 int SSL_OP_NO_COMPRESSION ; 
 int SSL_OP_NO_SSLv2 ; 
 int SSL_OP_NO_SSLv3 ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (unsigned short,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,char*,...) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (char*,char*,unsigned short*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC14 (char*,char*) ; 

int FUNC15(int argc, char **argv)
{
    unsigned short port;
    SSL_CTX *ctx;
    neverbleed_t nb;
    char errbuf[NEVERBLEED_ERRBUF_SIZE];
    int use_privsep;

    /* initialization */
    FUNC6();
    FUNC5();
    FUNC0();
    if (FUNC10(&nb, errbuf) != 0) {
        FUNC9(stderr, "openssl_privsep_init: %s\n", errbuf);
        return 111;
    }
    ctx = FUNC1(FUNC7());
    FUNC2(ctx, SSL_OP_ALL | SSL_OP_NO_SSLv2 | SSL_OP_NO_SSLv3 | SSL_OP_NO_COMPRESSION);
    FUNC12(ctx);

    /* parse args */
    if (argc != 5) {
        FUNC9(stderr, "Usage: %s <internal|privsep> <port> <certificate-chain-file> <private-key-file>\n", argv[0]);
        return 111;
    }
    if (FUNC14(argv[1], "internal") == 0) {
        use_privsep = 0;
    } else if (FUNC14(argv[1], "privsep") == 0) {
        use_privsep = 1;
    } else {
        FUNC9(stderr, "unknown mode:%s\n", argv[1]);
        return 111;
    }
    if (FUNC13(argv[2], "%hu", &port) != 1) {
        FUNC9(stderr, "failed to parse port:%s\n", argv[2]);
        return 111;
    }
    if (FUNC4(ctx, argv[3]) != 1) {
        FUNC9(stderr, "failed to load certificate chain file:%s\n", argv[3]);
        return 111;
    }
    if (use_privsep) {
        if (FUNC11(&nb, ctx, argv[4], errbuf) != 1) {
            FUNC9(stderr, "failed to load private key from file:%s:%s\n", argv[4], errbuf);
            return 111;
        }
    } else {
        if (FUNC3(ctx, argv[4], SSL_FILETYPE_PEM) != 1) {
            FUNC9(stderr, "failed to load private key from file:%s\n", argv[4]);
            return 111;
        }
    }

    /* start the httpd */
    return FUNC8(port, ctx);
}