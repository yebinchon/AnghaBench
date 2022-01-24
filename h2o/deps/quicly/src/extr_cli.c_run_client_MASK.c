#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct sockaddr_in {int msg_namelen; int msg_iovlen; struct iovec* msg_iov; struct sockaddr* msg_name; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int /*<<< orphan*/  sa_family; } ;
struct msghdr {int msg_namelen; int msg_iovlen; struct iovec* msg_iov; struct sockaddr* msg_name; int /*<<< orphan*/  sin_family; } ;
struct iovec {int iov_len; int /*<<< orphan*/ * iov_base; } ;
typedef  size_t ssize_t ;
typedef  int /*<<< orphan*/  sa ;
typedef  int /*<<< orphan*/  quicly_decoded_packet_t ;
struct TYPE_10__ {TYPE_3__* now; } ;
typedef  TYPE_1__ quicly_context_t ;
typedef  int /*<<< orphan*/  quicly_conn_t ;
typedef  int /*<<< orphan*/  mess ;
typedef  int /*<<< orphan*/  local ;
typedef  scalar_t__ int64_t ;
typedef  int /*<<< orphan*/  fd_set ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_14__ {int /*<<< orphan*/  master_id; } ;
struct TYPE_13__ {TYPE_2__* now; } ;
struct TYPE_12__ {scalar_t__ (* cb ) (TYPE_3__*) ;} ;
struct TYPE_11__ {scalar_t__ (* cb ) (TYPE_2__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 scalar_t__ EINTR ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ INT64_MAX ; 
 int /*<<< orphan*/  IPPROTO_UDP ; 
 int QUICLY_ERROR_FREE_CONNECTION ; 
 size_t SIZE_MAX ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int,void*,int) ; 
 TYPE_5__ ctx ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ enqueue_requests_at ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  hs_properties ; 
 int /*<<< orphan*/  FUNC8 (struct sockaddr_in*,int /*<<< orphan*/ ,int) ; 
 TYPE_7__ next_cid ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int FUNC10 (int /*<<< orphan*/ **,TYPE_5__*,char const*,struct sockaddr*,int /*<<< orphan*/ *,TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t FUNC11 (TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct sockaddr*,int /*<<< orphan*/ *) ; 
 size_t FUNC16 (int,struct sockaddr_in*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  resumed_transport_params ; 
 int /*<<< orphan*/  resumption_token ; 
 int FUNC17 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int FUNC18 (int,int /*<<< orphan*/ *) ; 
 int FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC20 (TYPE_3__*) ; 
 scalar_t__ FUNC21 (TYPE_2__*) ; 
 int verbosity ; 

__attribute__((used)) static int FUNC22(struct sockaddr *sa, const char *host)
{
    int fd, ret;
    struct sockaddr_in local;
    quicly_conn_t *conn = NULL;

    if ((fd = FUNC19(sa->sa_family, SOCK_DGRAM, IPPROTO_UDP)) == -1) {
        FUNC9("socket(2) failed");
        return 1;
    }
    FUNC8(&local, 0, sizeof(local));
    local.sin_family = AF_INET;
    if (FUNC4(fd, (void *)&local, sizeof(local)) != 0) {
        FUNC9("bind(2) failed");
        return 1;
    }
    ret = FUNC10(&conn, &ctx, host, sa, NULL, &next_cid, resumption_token, &hs_properties, &resumed_transport_params);
    FUNC3(ret == 0);
    ++next_cid.master_id;
    FUNC5(conn);
    FUNC18(fd, conn);

    while (1) {
        fd_set readfds;
        struct timeval *tv, tvbuf;
        do {
            int64_t timeout_at = conn != NULL ? FUNC14(conn) : INT64_MAX;
            if (enqueue_requests_at < timeout_at)
                timeout_at = enqueue_requests_at;
            if (timeout_at != INT64_MAX) {
                quicly_context_t *ctx = FUNC13(conn);
                int64_t delta = timeout_at - ctx->now->cb(ctx->now);
                if (delta > 0) {
                    tvbuf.tv_sec = delta / 1000;
                    tvbuf.tv_usec = (delta % 1000) * 1000;
                } else {
                    tvbuf.tv_sec = 0;
                    tvbuf.tv_usec = 0;
                }
                tv = &tvbuf;
            } else {
                tv = NULL;
            }
            FUNC2(&readfds);
            FUNC1(fd, &readfds);
        } while (FUNC17(fd + 1, &readfds, NULL, NULL, tv) == -1 && errno == EINTR);
        if (enqueue_requests_at <= ctx.now->cb(ctx.now))
            FUNC5(conn);
        if (FUNC0(fd, &readfds)) {
            uint8_t buf[4096];
            struct msghdr mess;
            struct sockaddr sa;
            struct iovec vec;
            FUNC8(&mess, 0, sizeof(mess));
            mess.msg_name = &sa;
            mess.msg_namelen = sizeof(sa);
            vec.iov_base = buf;
            vec.iov_len = sizeof(buf);
            mess.msg_iov = &vec;
            mess.msg_iovlen = 1;
            ssize_t rret;
            while ((rret = FUNC16(fd, &mess, 0)) <= 0)
                ;
            if (verbosity >= 2)
                FUNC7("recvmsg", buf, rret);
            size_t off = 0;
            while (off != rret) {
                quicly_decoded_packet_t packet;
                size_t plen = FUNC11(&ctx, &packet, buf + off, rret - off);
                if (plen == SIZE_MAX)
                    break;
                FUNC15(conn, NULL, &sa, &packet);
                off += plen;
            }
        }
        if (conn != NULL) {
            ret = FUNC18(fd, conn);
            if (ret != 0) {
                FUNC12(conn);
                conn = NULL;
                if (ret == QUICLY_ERROR_FREE_CONNECTION) {
                    return 0;
                } else {
                    FUNC6(stderr, "quicly_send returned %d\n", ret);
                    return 1;
                }
            }
        }
    }
}