
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int timer; } ;
struct fd {TYPE_1__ timerfd; } ;


 int timer_free (int ) ;

__attribute__((used)) static int timerfd_close(struct fd *fd) {
    timer_free(fd->timerfd.timer);
    return 0;
}
