
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int si_code; int si_addr; } ;
typedef TYPE_1__ siginfo_t ;


 int printf (char*,int,int,int ) ;

void handler(int signal, siginfo_t *info, void *ucontext) {
    printf("caught signal %d code %d at %p\n", signal, info->si_code, info->si_addr);
}
