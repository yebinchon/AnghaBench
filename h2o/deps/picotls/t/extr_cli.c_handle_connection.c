
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int wbuf_small ;
typedef char uint8_t ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
typedef int ssize_t ;
typedef int ptls_t ;
struct TYPE_14__ {scalar_t__ early_data_acceptance; size_t* max_early_data_size; } ;
struct TYPE_15__ {TYPE_1__ client; } ;
typedef TYPE_2__ ptls_handshake_properties_t ;
typedef int ptls_context_t ;
struct TYPE_16__ {scalar_t__ off; char* base; } ;
typedef TYPE_3__ ptls_buffer_t ;
typedef int fd_set ;
typedef int bytebuf ;


 scalar_t__ EAGAIN ;
 scalar_t__ EINTR ;
 scalar_t__ EWOULDBLOCK ;
 scalar_t__ FD_ISSET (int,int *) ;
 int FD_SET (int,int *) ;
 int FD_ZERO (int *) ;
 int F_SETFL ;
 int O_NONBLOCK ;
 int O_RDONLY ;
 int PTLS_ALERT_CLOSE_NOTIFY ;
 int PTLS_ALERT_LEVEL_WARNING ;
 scalar_t__ PTLS_EARLY_DATA_ACCEPTANCE_UNKNOWN ;
 scalar_t__ PTLS_EARLY_DATA_ACCEPTED ;
 int PTLS_ERROR_IN_PROGRESS ;
 int SHUT_WR ;
 int assert (int) ;
 int close (int) ;
 scalar_t__ errno ;
 int fcntl (int,int ,int ) ;
 int fprintf (int ,char*,...) ;
 int open (char const*,int ) ;
 int ptls_buffer_dispose (TYPE_3__*) ;
 int ptls_buffer_init (TYPE_3__*,char*,int) ;
 int ptls_buffer_pushv (TYPE_3__*,char*,int) ;
 int ptls_free (int *) ;
 int ptls_handshake (int *,TYPE_3__*,char*,size_t*,TYPE_2__*) ;
 scalar_t__ ptls_is_server (int *) ;
 int * ptls_new (int *,int ) ;
 int ptls_receive (int *,TYPE_3__*,char*,size_t*) ;
 int ptls_send (int *,TYPE_3__*,char*,int) ;
 int ptls_send_alert (int *,TYPE_3__*,int ,int ) ;
 int ptls_set_server_name (int *,char const*,int ) ;
 int ptls_update_key (int *,int) ;
 int read (int,char*,int) ;
 int select (int,int *,int *,int *,struct timeval*) ;
 int shift_buffer (TYPE_3__*,int) ;
 int shutdown (int,int ) ;
 int stderr ;
 char* strerror (scalar_t__) ;
 int write (int,char*,scalar_t__) ;

__attribute__((used)) static int handle_connection(int sockfd, ptls_context_t *ctx, const char *server_name, const char *input_file,
                             ptls_handshake_properties_t *hsprop, int request_key_update, int keep_sender_open)
{
    ptls_t *tls = ptls_new(ctx, server_name == ((void*)0));
    ptls_buffer_t rbuf, encbuf, ptbuf;
    char bytebuf[16384];
    enum { IN_HANDSHAKE, IN_1RTT, IN_SHUTDOWN } state = IN_HANDSHAKE;
    int inputfd = 0, ret = 0;
    size_t early_bytes_sent = 0;
    ssize_t ioret;

    ptls_buffer_init(&rbuf, "", 0);
    ptls_buffer_init(&encbuf, "", 0);
    ptls_buffer_init(&ptbuf, "", 0);

    fcntl(sockfd, F_SETFL, O_NONBLOCK);

    if (input_file != ((void*)0)) {
        if ((inputfd = open(input_file, O_RDONLY)) == -1) {
            fprintf(stderr, "failed to open file:%s:%s\n", input_file, strerror(errno));
            ret = 1;
            goto Exit;
        }
    }
    if (server_name != ((void*)0)) {
        ptls_set_server_name(tls, server_name, 0);
        if ((ret = ptls_handshake(tls, &encbuf, ((void*)0), ((void*)0), hsprop)) != PTLS_ERROR_IN_PROGRESS) {
            fprintf(stderr, "ptls_handshake:%d\n", ret);
            ret = 1;
            goto Exit;
        }
    }

    while (1) {

        fd_set readfds, writefds, exceptfds;
        int maxfd = 0;
        struct timeval timeout;
        do {
            FD_ZERO(&readfds);
            FD_ZERO(&writefds);
            FD_ZERO(&exceptfds);
            FD_SET(sockfd, &readfds);
            if (encbuf.off != 0)
                FD_SET(sockfd, &writefds);
            FD_SET(sockfd, &exceptfds);
            maxfd = sockfd + 1;
            if (inputfd != -1) {
                FD_SET(inputfd, &readfds);
                FD_SET(inputfd, &exceptfds);
                if (maxfd <= inputfd)
                    maxfd = inputfd + 1;
            }
            timeout.tv_sec = encbuf.off != 0 ? 0 : 3600;
            timeout.tv_usec = 0;
        } while (select(maxfd, &readfds, &writefds, &exceptfds, &timeout) == -1);


        if (FD_ISSET(sockfd, &readfds) || FD_ISSET(sockfd, &exceptfds)) {
            size_t off = 0, leftlen;
            while ((ioret = read(sockfd, bytebuf, sizeof(bytebuf))) == -1 && errno == EINTR)
                ;
            if (ioret == -1 && (errno == EWOULDBLOCK || errno == EAGAIN)) {

                ioret = 0;
            } else if (ioret <= 0) {
                goto Exit;
            }
            while ((leftlen = ioret - off) != 0) {
                if (state == IN_HANDSHAKE) {
                    if ((ret = ptls_handshake(tls, &encbuf, bytebuf + off, &leftlen, hsprop)) == 0) {
                        state = IN_1RTT;
                        assert(ptls_is_server(tls) || hsprop->client.early_data_acceptance != PTLS_EARLY_DATA_ACCEPTANCE_UNKNOWN);

                        if (hsprop->client.early_data_acceptance == PTLS_EARLY_DATA_ACCEPTED)
                            shift_buffer(&ptbuf, early_bytes_sent);
                        if (request_key_update)
                            ptls_update_key(tls, 1);
                        if (ptbuf.off != 0) {
                            if ((ret = ptls_send(tls, &encbuf, ptbuf.base, ptbuf.off)) != 0) {
                                fprintf(stderr, "ptls_send(1rtt):%d\n", ret);
                                goto Exit;
                            }
                            ptbuf.off = 0;
                        }
                    } else if (ret == PTLS_ERROR_IN_PROGRESS) {

                    } else {
                        if (encbuf.off != 0)
                            (void)write(sockfd, encbuf.base, encbuf.off);
                        fprintf(stderr, "ptls_handshake:%d\n", ret);
                        goto Exit;
                    }
                } else {
                    if ((ret = ptls_receive(tls, &rbuf, bytebuf + off, &leftlen)) == 0) {
                        if (rbuf.off != 0) {
                            write(1, rbuf.base, rbuf.off);
                            rbuf.off = 0;
                        }
                    } else if (ret == PTLS_ERROR_IN_PROGRESS) {

                    } else {
                        fprintf(stderr, "ptls_receive:%d\n", ret);
                        goto Exit;
                    }
                }
                off += leftlen;
            }
        }


        if (inputfd != -1 && (FD_ISSET(inputfd, &readfds) || FD_ISSET(inputfd, &exceptfds))) {
            while ((ioret = read(inputfd, bytebuf, sizeof(bytebuf))) == -1 && errno == EINTR)
                ;
            if (ioret > 0) {
                ptls_buffer_pushv(&ptbuf, bytebuf, ioret);
                if (state == IN_HANDSHAKE) {
                    size_t send_amount = 0;
                    if (server_name != ((void*)0) && hsprop->client.max_early_data_size != ((void*)0)) {
                        size_t max_can_be_sent = *hsprop->client.max_early_data_size;
                        if (max_can_be_sent > ptbuf.off)
                            max_can_be_sent = ptbuf.off;
                        send_amount = max_can_be_sent - early_bytes_sent;
                    }
                    if (send_amount != 0) {
                        if ((ret = ptls_send(tls, &encbuf, ptbuf.base, send_amount)) != 0) {
                            fprintf(stderr, "ptls_send(early_data):%d\n", ret);
                            goto Exit;
                        }
                        early_bytes_sent += send_amount;
                    }
                } else {
                    if ((ret = ptls_send(tls, &encbuf, bytebuf, ioret)) != 0) {
                        fprintf(stderr, "ptls_send(1rtt):%d\n", ret);
                        goto Exit;
                    }
                    ptbuf.off = 0;
                }
            } else {

                if (input_file != ((void*)0))
                    close(inputfd);
                inputfd = -1;
            }
        }


        if (encbuf.off != 0) {
            while ((ioret = write(sockfd, encbuf.base, encbuf.off)) == -1 && errno == EINTR)
                ;
            if (ioret == -1 && (errno == EWOULDBLOCK || errno == EAGAIN)) {

            } else if (ioret <= 0) {
                goto Exit;
            } else {
                shift_buffer(&encbuf, ioret);
            }
        }


        if (state == IN_1RTT && inputfd == -1) {
            if (!keep_sender_open) {
                ptls_buffer_t wbuf;
                uint8_t wbuf_small[32];
                ptls_buffer_init(&wbuf, wbuf_small, sizeof(wbuf_small));
                if ((ret = ptls_send_alert(tls, &wbuf,
                           PTLS_ALERT_LEVEL_WARNING, PTLS_ALERT_CLOSE_NOTIFY)) != 0) {
                    fprintf(stderr, "ptls_send_alert:%d\n", ret);
                }
                if (wbuf.off != 0)
                    (void)write(sockfd, wbuf.base, wbuf.off);
                ptls_buffer_dispose(&wbuf);
                shutdown(sockfd, SHUT_WR);
            }
            state = IN_SHUTDOWN;
        }
    }

Exit:
    if (sockfd != -1)
        close(sockfd);
    if (input_file != ((void*)0) && inputfd != -1)
        close(inputfd);
    ptls_buffer_dispose(&rbuf);
    ptls_buffer_dispose(&encbuf);
    ptls_buffer_dispose(&ptbuf);
    ptls_free(tls);
    return ret != 0;
}
