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
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_port; TYPE_1__ sin_addr; int /*<<< orphan*/  sin_family; } ;
typedef  int /*<<< orphan*/  sin ;
typedef  int /*<<< orphan*/  reuse_flag ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  SSL_CTX ;
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SOMAXCONN ; 
 int /*<<< orphan*/  SO_REUSEADDR ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int,void*,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 scalar_t__ FUNC13 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC16 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (char const*) ; 

int FUNC18(unsigned short port, SSL_CTX *ctx)
{
    int listen_fd, reuse_flag;
    struct sockaddr_in sin = {};

    if ((listen_fd = FUNC15(AF_INET, SOCK_STREAM, 0)) == -1) {
        FUNC10(stderr, "failed to create socket:%s\n", FUNC16(errno));
        return 111;
    }
    reuse_flag = 1;
    FUNC14(listen_fd, SOL_SOCKET, SO_REUSEADDR, &reuse_flag, sizeof(reuse_flag));
    sin.sin_family = AF_INET;
    sin.sin_addr.s_addr = FUNC11(0x7f000001);
    sin.sin_port = FUNC12(8888);
    if (FUNC8(listen_fd, (void *)&sin, sizeof(sin)) != 0) {
        FUNC10(stderr, "bind failed:%s\n", FUNC16(errno));
        return 111;
    }
    if (FUNC13(listen_fd, SOMAXCONN) != 0) {
        FUNC10(stderr, "listen failed:%s\n", FUNC16(errno));
        return 111;
    }

    while (1) {
        int conn_fd;
        SSL *ssl;
        char buf[4096];
        /* accept connection */
        while ((conn_fd = FUNC7(listen_fd, NULL, NULL)) == -1 && errno == EINTR)
            ;
        if (conn_fd == -1) {
            FUNC10(stderr, "accept(2) failed:%s\n", FUNC16(errno));
            return 111;
        }
        ssl = FUNC2(ctx);
        FUNC4(ssl, conn_fd);
        if (FUNC0(ssl) == 1) {
            FUNC3(ssl, buf, sizeof(buf));
            const char *resp =
                "HTTP/1.0 200 OK\r\nContent-Length: 6\r\nConnection: close\r\nContent-Type: text/plain\r\n\r\nhello\n";
            FUNC6(ssl, resp, FUNC17(resp));
            FUNC5(ssl);
        } else {
            FUNC10(stderr, "SSL_accept failed\n");
        }
        FUNC1(ssl);
        FUNC9(conn_fd);
    }
}