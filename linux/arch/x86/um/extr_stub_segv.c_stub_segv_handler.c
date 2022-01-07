
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int uc_mcontext; } ;
typedef TYPE_1__ ucontext_t ;
struct faultinfo {int dummy; } ;
typedef int siginfo_t ;


 int GET_FAULTINFO_FROM_MC (struct faultinfo,int *) ;
 scalar_t__ STUB_DATA ;
 int trap_myself () ;

void __attribute__ ((__section__ (".__syscall_stub")))
stub_segv_handler(int sig, siginfo_t *info, void *p)
{
 ucontext_t *uc = p;

 GET_FAULTINFO_FROM_MC(*((struct faultinfo *) STUB_DATA),
         &uc->uc_mcontext);
 trap_myself();
}
