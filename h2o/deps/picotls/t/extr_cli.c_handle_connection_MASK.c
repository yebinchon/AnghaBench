#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wbuf_small ;
typedef  char uint8_t ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  ptls_t ;
struct TYPE_14__ {scalar_t__ early_data_acceptance; size_t* max_early_data_size; } ;
struct TYPE_15__ {TYPE_1__ client; } ;
typedef  TYPE_2__ ptls_handshake_properties_t ;
typedef  int /*<<< orphan*/  ptls_context_t ;
struct TYPE_16__ {scalar_t__ off; char* base; } ;
typedef  TYPE_3__ ptls_buffer_t ;
typedef  int /*<<< orphan*/  fd_set ;
typedef  int /*<<< orphan*/  bytebuf ;

/* Variables and functions */
 scalar_t__ EAGAIN ; 
 scalar_t__ EINTR ; 
 scalar_t__ EWOULDBLOCK ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  F_SETFL ; 
 int /*<<< orphan*/  O_NONBLOCK ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  PTLS_ALERT_CLOSE_NOTIFY ; 
 int /*<<< orphan*/  PTLS_ALERT_LEVEL_WARNING ; 
 scalar_t__ PTLS_EARLY_DATA_ACCEPTANCE_UNKNOWN ; 
 scalar_t__ PTLS_EARLY_DATA_ACCEPTED ; 
 int PTLS_ERROR_IN_PROGRESS ; 
 int /*<<< orphan*/  SHUT_WR ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC7 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *,TYPE_3__*,char*,size_t*,TYPE_2__*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ *,TYPE_3__*,char*,size_t*) ; 
 int FUNC16 (int /*<<< orphan*/ *,TYPE_3__*,char*,int) ; 
 int FUNC17 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int) ; 
 int FUNC20 (int,char*,int) ; 
 int FUNC21 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC23 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC24 (scalar_t__) ; 
 int FUNC25 (int,char*,scalar_t__) ; 

__attribute__((used)) static int FUNC26(int sockfd, ptls_context_t *ctx, const char *server_name, const char *input_file,
                             ptls_handshake_properties_t *hsprop, int request_key_update, int keep_sender_open)
{
    ptls_t *tls = FUNC14(ctx, server_name == NULL);
    ptls_buffer_t rbuf, encbuf, ptbuf;
    char bytebuf[16384];
    enum { IN_HANDSHAKE, IN_1RTT, IN_SHUTDOWN } state = IN_HANDSHAKE;
    int inputfd = 0, ret = 0;
    size_t early_bytes_sent = 0;
    ssize_t ioret;

    FUNC9(&rbuf, "", 0);
    FUNC9(&encbuf, "", 0);
    FUNC9(&ptbuf, "", 0);

    FUNC5(sockfd, F_SETFL, O_NONBLOCK);

    if (input_file != NULL) {
        if ((inputfd = FUNC7(input_file, O_RDONLY)) == -1) {
            FUNC6(stderr, "failed to open file:%s:%s\n", input_file, FUNC24(errno));
            ret = 1;
            goto Exit;
        }
    }
    if (server_name != NULL) {
        FUNC18(tls, server_name, 0);
        if ((ret = FUNC12(tls, &encbuf, NULL, NULL, hsprop)) != PTLS_ERROR_IN_PROGRESS) {
            FUNC6(stderr, "ptls_handshake:%d\n", ret);
            ret = 1;
            goto Exit;
        }
    }

    while (1) {
        /* check if data is available */
        fd_set readfds, writefds, exceptfds;
        int maxfd = 0;
        struct timeval timeout;
        do {
            FUNC2(&readfds);
            FUNC2(&writefds);
            FUNC2(&exceptfds);
            FUNC1(sockfd, &readfds);
            if (encbuf.off != 0)
                FUNC1(sockfd, &writefds);
            FUNC1(sockfd, &exceptfds);
            maxfd = sockfd + 1;
            if (inputfd != -1) {
                FUNC1(inputfd, &readfds);
                FUNC1(inputfd, &exceptfds);
                if (maxfd <= inputfd)
                    maxfd = inputfd + 1;
            }
            timeout.tv_sec = encbuf.off != 0 ? 0 : 3600;
            timeout.tv_usec = 0;
        } while (FUNC21(maxfd, &readfds, &writefds, &exceptfds, &timeout) == -1);

        /* consume incoming messages */
        if (FUNC0(sockfd, &readfds) || FUNC0(sockfd, &exceptfds)) {
            size_t off = 0, leftlen;
            while ((ioret = FUNC20(sockfd, bytebuf, sizeof(bytebuf))) == -1 && errno == EINTR)
                ;
            if (ioret == -1 && (errno == EWOULDBLOCK || errno == EAGAIN)) {
                /* no data */
                ioret = 0;
            } else if (ioret <= 0) {
                goto Exit;
            }
            while ((leftlen = ioret - off) != 0) {
                if (state == IN_HANDSHAKE) {
                    if ((ret = FUNC12(tls, &encbuf, bytebuf + off, &leftlen, hsprop)) == 0) {
                        state = IN_1RTT;
                        FUNC3(FUNC13(tls) || hsprop->client.early_data_acceptance != PTLS_EARLY_DATA_ACCEPTANCE_UNKNOWN);
                        /* release data sent as early-data, if server accepted it */
                        if (hsprop->client.early_data_acceptance == PTLS_EARLY_DATA_ACCEPTED)
                            FUNC22(&ptbuf, early_bytes_sent);
                        if (request_key_update)
                            FUNC19(tls, 1);
                        if (ptbuf.off != 0) {
                            if ((ret = FUNC16(tls, &encbuf, ptbuf.base, ptbuf.off)) != 0) {
                                FUNC6(stderr, "ptls_send(1rtt):%d\n", ret);
                                goto Exit;
                            }
                            ptbuf.off = 0;
                        }
                    } else if (ret == PTLS_ERROR_IN_PROGRESS) {
                        /* ok */
                    } else {
                        if (encbuf.off != 0)
                            (void)FUNC25(sockfd, encbuf.base, encbuf.off);
                        FUNC6(stderr, "ptls_handshake:%d\n", ret);
                        goto Exit;
                    }
                } else {
                    if ((ret = FUNC15(tls, &rbuf, bytebuf + off, &leftlen)) == 0) {
                        if (rbuf.off != 0) {
                            FUNC25(1, rbuf.base, rbuf.off);
                            rbuf.off = 0;
                        }
                    } else if (ret == PTLS_ERROR_IN_PROGRESS) {
                        /* ok */
                    } else {
                        FUNC6(stderr, "ptls_receive:%d\n", ret);
                        goto Exit;
                    }
                }
                off += leftlen;
            }
        }

        /* read input (and send if possible) */
        if (inputfd != -1 && (FUNC0(inputfd, &readfds) || FUNC0(inputfd, &exceptfds))) {
            while ((ioret = FUNC20(inputfd, bytebuf, sizeof(bytebuf))) == -1 && errno == EINTR)
                ;
            if (ioret > 0) {
                FUNC10(&ptbuf, bytebuf, ioret);
                if (state == IN_HANDSHAKE) {
                    size_t send_amount = 0;
                    if (server_name != NULL && hsprop->client.max_early_data_size != NULL) {
                        size_t max_can_be_sent = *hsprop->client.max_early_data_size;
                        if (max_can_be_sent > ptbuf.off)
                            max_can_be_sent = ptbuf.off;
                        send_amount = max_can_be_sent - early_bytes_sent;
                    }
                    if (send_amount != 0) {
                        if ((ret = FUNC16(tls, &encbuf, ptbuf.base, send_amount)) != 0) {
                            FUNC6(stderr, "ptls_send(early_data):%d\n", ret);
                            goto Exit;
                        }
                        early_bytes_sent += send_amount;
                    }
                } else {
                    if ((ret = FUNC16(tls, &encbuf, bytebuf, ioret)) != 0) {
                        FUNC6(stderr, "ptls_send(1rtt):%d\n", ret);
                        goto Exit;
                    }
                    ptbuf.off = 0;
                }
            } else {
                /* closed */
                if (input_file != NULL)
                    FUNC4(inputfd);
                inputfd = -1;
            }
        }

        /* send any data */
        if (encbuf.off != 0) {
            while ((ioret = FUNC25(sockfd, encbuf.base, encbuf.off)) == -1 && errno == EINTR)
                ;
            if (ioret == -1 && (errno == EWOULDBLOCK || errno == EAGAIN)) {
                /* no data */
            } else if (ioret <= 0) {
                goto Exit;
            } else {
                FUNC22(&encbuf, ioret);
            }
        }

        /* close the sender side when necessary */
        if (state == IN_1RTT && inputfd == -1) {
            if (!keep_sender_open) {
                ptls_buffer_t wbuf;
                uint8_t wbuf_small[32];
                FUNC9(&wbuf, wbuf_small, sizeof(wbuf_small));
                if ((ret = FUNC17(tls, &wbuf,
                           PTLS_ALERT_LEVEL_WARNING, PTLS_ALERT_CLOSE_NOTIFY)) != 0) {
                    FUNC6(stderr, "ptls_send_alert:%d\n", ret);
                }
                if (wbuf.off != 0)
                    (void)FUNC25(sockfd, wbuf.base, wbuf.off);
                FUNC8(&wbuf);
                FUNC23(sockfd, SHUT_WR);
            }
            state = IN_SHUTDOWN;
        }
    }

Exit:
    if (sockfd != -1)
        FUNC4(sockfd);
    if (input_file != NULL && inputfd != -1)
        FUNC4(inputfd);
    FUNC8(&rbuf);
    FUNC8(&encbuf);
    FUNC8(&ptbuf);
    FUNC11(tls);
    return ret != 0;
}