
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ev_loop {int dummy; } ;
struct TYPE_3__ {scalar_t__ signum; } ;
typedef TYPE_1__ ev_signal ;


 int exit (scalar_t__) ;

__attribute__((used)) static void handle_term_signal(struct ev_loop *loop, ev_signal *signal, int revents) {


    exit(128 + signal->signum);
}
