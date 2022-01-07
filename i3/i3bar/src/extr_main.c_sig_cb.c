
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ev_loop {int dummy; } ;
struct TYPE_3__ {int signum; } ;
typedef TYPE_1__ ev_signal ;


 int DLOG (char*) ;
 int EVUNLOOP_ALL ;



 int ev_unloop (int ,int ) ;
 int main_loop ;

__attribute__((used)) static void sig_cb(struct ev_loop *loop, ev_signal *watcher, int revents) {
    switch (watcher->signum) {
        case 128:
            DLOG("Got a SIGTERM, stopping\n");
            break;
        case 129:
            DLOG("Got a SIGINT, stopping\n");
            break;
        case 130:
            DLOG("Got a SIGHUP, stopping\n");
    }
    ev_unloop(main_loop, EVUNLOOP_ALL);
}
