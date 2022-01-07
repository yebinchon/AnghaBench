
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct sockaddr_storage {int dummy; } ;
struct msghdr {int msg_namelen; int msg_iovlen; struct iovec* msg_iov; struct sockaddr_storage* msg_name; } ;
struct iovec {int iov_len; int * iov_base; } ;
typedef int ssize_t ;
typedef int sa ;
typedef int quicly_datagram_t ;
typedef int quicly_conn_t ;
typedef scalar_t__ int64_t ;
typedef int fd_set ;
typedef int dgrams ;
typedef int conns ;
typedef int buf ;
struct TYPE_6__ {TYPE_1__* packet_allocator; TYPE_2__* now; } ;
struct TYPE_5__ {scalar_t__ (* cb ) (TYPE_2__*) ;} ;
struct TYPE_4__ {int (* free_packet ) (TYPE_1__*,int *) ;} ;


 scalar_t__ EINTR ;
 scalar_t__ FD_ISSET (int,int *) ;
 int FD_SET (int,int *) ;
 int FD_ZERO (int *) ;
 scalar_t__ INT64_MAX ;

 int assert (int ) ;
 TYPE_3__ ctx ;
 scalar_t__ errno ;
 int forward_stdin (int *) ;
 int fprintf (int ,char*,int) ;
 int is_server () ;
 int memmove (int **,int ,int) ;
 int process_msg (int ,int **,struct msghdr*,int) ;
 int quicly_free (int *) ;
 scalar_t__ quicly_get_first_timeout (int *) ;
 int quicly_send (int *,int **,size_t*) ;
 int recvmsg (int,struct msghdr*,int ) ;
 int select (int,int *,int *,int *,struct timeval*) ;
 int send_one (int,int *) ;
 int stderr ;
 scalar_t__ stub1 (TYPE_2__*) ;
 int stub2 (TYPE_1__*,int *) ;

__attribute__((used)) static int run_loop(int fd, quicly_conn_t *client)
{
    quicly_conn_t *conns[256] = {client};
    size_t i;
    int read_stdin = client != ((void*)0);

    while (1) {


        fd_set readfds;
        struct timeval tv;
        do {
            int64_t first_timeout = INT64_MAX, now = ctx.now->cb(ctx.now);
            for (i = 0; conns[i] != ((void*)0); ++i) {
                int64_t conn_timeout = quicly_get_first_timeout(conns[i]);
                if (conn_timeout < first_timeout)
                    first_timeout = conn_timeout;
            }
            if (now < first_timeout) {
                int64_t delta = first_timeout - now;
                if (delta > 1000 * 1000)
                    delta = 1000 * 1000;
                tv.tv_sec = delta / 1000;
                tv.tv_usec = (delta % 1000) * 1000;
            } else {
                tv.tv_sec = 1000;
                tv.tv_usec = 0;
            }
            FD_ZERO(&readfds);
            FD_SET(fd, &readfds);

            if (read_stdin)
                FD_SET(0, &readfds);
        } while (select(fd + 1, &readfds, ((void*)0), ((void*)0), &tv) == -1 && errno == EINTR);


        if (FD_ISSET(fd, &readfds)) {
            uint8_t buf[4096];
            struct sockaddr_storage sa;
            struct iovec vec = {.iov_base = buf, .iov_len = sizeof(buf)};
            struct msghdr msg = {.msg_name = &sa, .msg_namelen = sizeof(sa), .msg_iov = &vec, .msg_iovlen = 1};
            ssize_t rret;
            while ((rret = recvmsg(fd, &msg, 0)) == -1 && errno == EINTR)
                ;
            if (rret > 0)
                process_msg(client != ((void*)0), conns, &msg, rret);
        }


        if (FD_ISSET(0, &readfds)) {
            assert(client != ((void*)0));
            if (!forward_stdin(client))
                read_stdin = 0;
        }


        for (i = 0; conns[i] != ((void*)0); ++i) {
            quicly_datagram_t *dgrams[16];
            size_t num_dgrams = sizeof(dgrams) / sizeof(dgrams[0]);
            int ret = quicly_send(conns[i], dgrams, &num_dgrams);
            switch (ret) {
            case 0: {
                size_t j;
                for (j = 0; j != num_dgrams; ++j) {
                    send_one(fd, dgrams[j]);
                    ctx.packet_allocator->free_packet(ctx.packet_allocator, dgrams[j]);
                }
            } break;
            case 128:

                quicly_free(conns[i]);
                memmove(conns + i, conns + i + 1, sizeof(conns) - sizeof(conns[0]) * (i + 1));
                --i;
                if (!is_server())
                    return 0;
                break;
            default:
                fprintf(stderr, "quicly_send returned %d\n", ret);
                return 1;
            }
        }
    }

    return 0;
}
