
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task {int dummy; } ;
struct siginfo_ {int code; } ;


 int SIGALRM_ ;
 int SI_TIMER_ ;
 int send_signal (struct task*,int ,struct siginfo_) ;

__attribute__((used)) static void itimer_notify(struct task *task) {
    struct siginfo_ info = {
        .code = SI_TIMER_,
    };
    send_signal(task, SIGALRM_, info);
}
