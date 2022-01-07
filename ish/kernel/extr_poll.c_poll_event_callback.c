
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union poll_fd_info {scalar_t__ ptr; } ;
struct pollfd_ {int revents; int events; } ;
struct poll_context {int nfds; scalar_t__* files; struct pollfd_* polls; } ;


 int POLL_ALWAYS_LISTENING ;

__attribute__((used)) static int poll_event_callback(void *context, int types, union poll_fd_info info) {
    struct poll_context *c = context;
    struct pollfd_ *polls = c->polls;
    int nfds = c->nfds;
    int res = 0;
    for (int i = 0; i < nfds; i++) {
        if (c->files[i] == info.ptr) {
            polls[i].revents = types & (polls[i].events | POLL_ALWAYS_LISTENING);
            res = 1;
        }
    }
    return res;
}
