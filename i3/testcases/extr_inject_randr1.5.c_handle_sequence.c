
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct connstate {scalar_t__ getmonitors; scalar_t__ getoutputinfo; TYPE_1__* clientw; } ;
struct TYPE_6__ {scalar_t__ sequence; } ;
typedef TYPE_2__ generic_x11_reply_t ;
struct TYPE_8__ {int len; int * buf; } ;
struct TYPE_7__ {int len; int * buf; } ;
struct TYPE_5__ {int fd; } ;


 TYPE_4__ getmonitors_reply ;
 TYPE_3__ getoutputinfo_reply ;
 int must_write (int ) ;
 int printf (char*) ;
 int writeall (int ,int *,int ) ;

__attribute__((used)) static bool handle_sequence(struct connstate *connstate, uint16_t sequence) {

    if (sequence == connstate->getmonitors) {
        printf("RRGetMonitors reply!\n");
        if (getmonitors_reply.buf != ((void*)0)) {
            printf("injecting reply\n");
            ((generic_x11_reply_t *)getmonitors_reply.buf)->sequence = sequence;
            must_write(writeall(connstate->clientw->fd, getmonitors_reply.buf, getmonitors_reply.len));
            return 1;
        }
    }

    if (sequence == connstate->getoutputinfo) {
        printf("RRGetOutputInfo reply!\n");
        if (getoutputinfo_reply.buf != ((void*)0)) {
            printf("injecting reply\n");
            ((generic_x11_reply_t *)getoutputinfo_reply.buf)->sequence = sequence;
            must_write(writeall(connstate->clientw->fd, getoutputinfo_reply.buf, getoutputinfo_reply.len));
            return 1;
        }
    }


    return 0;
}
