
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct sockaddr_in {int msg_namelen; int msg_iovlen; struct iovec* msg_iov; struct sockaddr* msg_name; int sin_family; } ;
struct sockaddr {int sa_family; } ;
struct msghdr {int msg_namelen; int msg_iovlen; struct iovec* msg_iov; struct sockaddr* msg_name; int sin_family; } ;
struct iovec {int iov_len; int * iov_base; } ;
typedef size_t ssize_t ;
typedef int sa ;
typedef int quicly_decoded_packet_t ;
struct TYPE_10__ {TYPE_3__* now; } ;
typedef TYPE_1__ quicly_context_t ;
typedef int quicly_conn_t ;
typedef int mess ;
typedef int local ;
typedef scalar_t__ int64_t ;
typedef int fd_set ;
typedef int buf ;
struct TYPE_14__ {int master_id; } ;
struct TYPE_13__ {TYPE_2__* now; } ;
struct TYPE_12__ {scalar_t__ (* cb ) (TYPE_3__*) ;} ;
struct TYPE_11__ {scalar_t__ (* cb ) (TYPE_2__*) ;} ;


 int AF_INET ;
 scalar_t__ EINTR ;
 scalar_t__ FD_ISSET (int,int *) ;
 int FD_SET (int,int *) ;
 int FD_ZERO (int *) ;
 scalar_t__ INT64_MAX ;
 int IPPROTO_UDP ;
 int QUICLY_ERROR_FREE_CONNECTION ;
 size_t SIZE_MAX ;
 int SOCK_DGRAM ;
 int assert (int) ;
 scalar_t__ bind (int,void*,int) ;
 TYPE_5__ ctx ;
 int enqueue_requests (int *) ;
 scalar_t__ enqueue_requests_at ;
 scalar_t__ errno ;
 int fprintf (int ,char*,int) ;
 int hexdump (char*,int *,size_t) ;
 int hs_properties ;
 int memset (struct sockaddr_in*,int ,int) ;
 TYPE_7__ next_cid ;
 int perror (char*) ;
 int quicly_connect (int **,TYPE_5__*,char const*,struct sockaddr*,int *,TYPE_7__*,int ,int *,int *) ;
 size_t quicly_decode_packet (TYPE_5__*,int *,int *,size_t) ;
 int quicly_free (int *) ;
 TYPE_1__* quicly_get_context (int *) ;
 scalar_t__ quicly_get_first_timeout (int *) ;
 int quicly_receive (int *,int *,struct sockaddr*,int *) ;
 size_t recvmsg (int,struct sockaddr_in*,int ) ;
 int resumed_transport_params ;
 int resumption_token ;
 int select (int,int *,int *,int *,struct timeval*) ;
 int send_pending (int,int *) ;
 int socket (int ,int ,int ) ;
 int stderr ;
 scalar_t__ stub1 (TYPE_3__*) ;
 scalar_t__ stub2 (TYPE_2__*) ;
 int verbosity ;

__attribute__((used)) static int run_client(struct sockaddr *sa, const char *host)
{
    int fd, ret;
    struct sockaddr_in local;
    quicly_conn_t *conn = ((void*)0);

    if ((fd = socket(sa->sa_family, SOCK_DGRAM, IPPROTO_UDP)) == -1) {
        perror("socket(2) failed");
        return 1;
    }
    memset(&local, 0, sizeof(local));
    local.sin_family = AF_INET;
    if (bind(fd, (void *)&local, sizeof(local)) != 0) {
        perror("bind(2) failed");
        return 1;
    }
    ret = quicly_connect(&conn, &ctx, host, sa, ((void*)0), &next_cid, resumption_token, &hs_properties, &resumed_transport_params);
    assert(ret == 0);
    ++next_cid.master_id;
    enqueue_requests(conn);
    send_pending(fd, conn);

    while (1) {
        fd_set readfds;
        struct timeval *tv, tvbuf;
        do {
            int64_t timeout_at = conn != ((void*)0) ? quicly_get_first_timeout(conn) : INT64_MAX;
            if (enqueue_requests_at < timeout_at)
                timeout_at = enqueue_requests_at;
            if (timeout_at != INT64_MAX) {
                quicly_context_t *ctx = quicly_get_context(conn);
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
                tv = ((void*)0);
            }
            FD_ZERO(&readfds);
            FD_SET(fd, &readfds);
        } while (select(fd + 1, &readfds, ((void*)0), ((void*)0), tv) == -1 && errno == EINTR);
        if (enqueue_requests_at <= ctx.now->cb(ctx.now))
            enqueue_requests(conn);
        if (FD_ISSET(fd, &readfds)) {
            uint8_t buf[4096];
            struct msghdr mess;
            struct sockaddr sa;
            struct iovec vec;
            memset(&mess, 0, sizeof(mess));
            mess.msg_name = &sa;
            mess.msg_namelen = sizeof(sa);
            vec.iov_base = buf;
            vec.iov_len = sizeof(buf);
            mess.msg_iov = &vec;
            mess.msg_iovlen = 1;
            ssize_t rret;
            while ((rret = recvmsg(fd, &mess, 0)) <= 0)
                ;
            if (verbosity >= 2)
                hexdump("recvmsg", buf, rret);
            size_t off = 0;
            while (off != rret) {
                quicly_decoded_packet_t packet;
                size_t plen = quicly_decode_packet(&ctx, &packet, buf + off, rret - off);
                if (plen == SIZE_MAX)
                    break;
                quicly_receive(conn, ((void*)0), &sa, &packet);
                off += plen;
            }
        }
        if (conn != ((void*)0)) {
            ret = send_pending(fd, conn);
            if (ret != 0) {
                quicly_free(conn);
                conn = ((void*)0);
                if (ret == QUICLY_ERROR_FREE_CONNECTION) {
                    return 0;
                } else {
                    fprintf(stderr, "quicly_send returned %d\n", ret);
                    return 1;
                }
            }
        }
    }
}
