
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct st_h2o_evloop_socket_t {int _flags; int fd; int super; struct st_h2o_evloop_socket_t* _next_statechanged; } ;
struct TYPE_5__ {struct st_h2o_evloop_socket_t* head; struct st_h2o_evloop_socket_t** tail_ref; } ;
struct TYPE_6__ {TYPE_2__ _statechanged; } ;
struct st_h2o_evloop_epoll_t {TYPE_3__ super; int ep; } ;
struct TYPE_4__ {struct st_h2o_evloop_socket_t* ptr; } ;
struct epoll_event {TYPE_1__ data; int events; } ;


 scalar_t__ EINTR ;
 int EPOLLIN ;
 int EPOLLOUT ;
 int EPOLL_CTL_ADD ;
 int EPOLL_CTL_DEL ;
 int EPOLL_CTL_MOD ;
 int H2O_SOCKET_FLAG_IS_DISPOSED ;
 int H2O_SOCKET_FLAG_IS_POLLED_FOR_READ ;
 int H2O_SOCKET_FLAG_IS_POLLED_FOR_WRITE ;
 int H2O_SOCKET_FLAG__EPOLL_IS_REGISTERED ;
 int assert (int) ;
 int epoll_ctl (int ,int,int ,struct epoll_event*) ;
 scalar_t__ errno ;
 int free (struct st_h2o_evloop_socket_t*) ;
 scalar_t__ h2o_socket_is_reading (int *) ;
 scalar_t__ h2o_socket_is_writing (int *) ;

__attribute__((used)) static int update_status(struct st_h2o_evloop_epoll_t *loop)
{
    while (loop->super._statechanged.head != ((void*)0)) {

        struct st_h2o_evloop_socket_t *sock = loop->super._statechanged.head;
        loop->super._statechanged.head = sock->_next_statechanged;
        sock->_next_statechanged = sock;

        if ((sock->_flags & H2O_SOCKET_FLAG_IS_DISPOSED) != 0) {
            free(sock);
        } else {
            int changed = 0, op, ret;
            struct epoll_event ev;
            ev.events = 0;
            if (h2o_socket_is_reading(&sock->super)) {
                ev.events |= EPOLLIN;
                if ((sock->_flags & H2O_SOCKET_FLAG_IS_POLLED_FOR_READ) == 0) {
                    sock->_flags |= H2O_SOCKET_FLAG_IS_POLLED_FOR_READ;
                    changed = 1;
                }
            } else {
                if ((sock->_flags & H2O_SOCKET_FLAG_IS_POLLED_FOR_READ) != 0) {
                    sock->_flags &= ~H2O_SOCKET_FLAG_IS_POLLED_FOR_READ;
                    changed = 1;
                }
            }
            if (h2o_socket_is_writing(&sock->super)) {
                ev.events |= EPOLLOUT;
                if ((sock->_flags & H2O_SOCKET_FLAG_IS_POLLED_FOR_WRITE) == 0) {
                    sock->_flags |= H2O_SOCKET_FLAG_IS_POLLED_FOR_WRITE;
                    changed = 1;
                }
            } else {
                if ((sock->_flags & H2O_SOCKET_FLAG_IS_POLLED_FOR_WRITE) != 0) {
                    sock->_flags &= ~H2O_SOCKET_FLAG_IS_POLLED_FOR_WRITE;
                    changed = 1;
                }
            }
            if (changed) {
                if ((sock->_flags & H2O_SOCKET_FLAG__EPOLL_IS_REGISTERED) != 0) {
                    if (ev.events != 0)
                        op = EPOLL_CTL_MOD;
                    else
                        op = EPOLL_CTL_DEL;
                } else {
                    assert(ev.events != 0);
                    op = EPOLL_CTL_ADD;
                }
                ev.data.ptr = sock;
                while ((ret = epoll_ctl(loop->ep, op, sock->fd, &ev)) != 0 && errno == EINTR)
                    ;
                if (ret != 0)
                    return -1;
                if (op == EPOLL_CTL_DEL)
                    sock->_flags &= ~H2O_SOCKET_FLAG__EPOLL_IS_REGISTERED;
                else
                    sock->_flags |= H2O_SOCKET_FLAG__EPOLL_IS_REGISTERED;
            }
        }
    }
    loop->super._statechanged.tail_ref = &loop->super._statechanged.head;

    return 0;
}
