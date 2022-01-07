
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cont_signal; int stop_signal; scalar_t__ version; } ;
typedef TYPE_1__ i3bar_child ;


 int SIGCONT ;
 int SIGSTOP ;

__attribute__((used)) static void child_init(i3bar_child *child) {
    child->version = 0;
    child->stop_signal = SIGSTOP;
    child->cont_signal = SIGCONT;
}
