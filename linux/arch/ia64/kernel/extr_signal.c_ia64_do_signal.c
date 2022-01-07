
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {long r8; int r15; scalar_t__ r10; } ;
struct sigscratch {TYPE_3__ pt; } ;
struct TYPE_4__ {int sa_flags; } ;
struct TYPE_5__ {TYPE_1__ sa; } ;
struct ksignal {scalar_t__ sig; TYPE_2__ ka; } ;


 void* EINTR ;




 int SA_RESTART ;
 int __NR_restart_syscall ;
 int get_signal (struct ksignal*) ;
 scalar_t__ handle_signal (struct ksignal*,struct sigscratch*) ;
 int ia64_decrement_ip (TYPE_3__*) ;
 int restore_saved_sigmask () ;
 scalar_t__ unlikely (long) ;

void
ia64_do_signal (struct sigscratch *scr, long in_syscall)
{
 long restart = in_syscall;
 long errno = scr->pt.r8;
 struct ksignal ksig;





 while (1) {
  get_signal(&ksig);







  if ((long) scr->pt.r10 != -1)






   restart = 0;

  if (ksig.sig <= 0)
   break;

  if (unlikely(restart)) {
   switch (errno) {
   case 128:
   case 131:
    scr->pt.r8 = EINTR;

    break;
   case 129:
    if ((ksig.ka.sa.sa_flags & SA_RESTART) == 0) {
     scr->pt.r8 = EINTR;

     break;
    }

   case 130:
    ia64_decrement_ip(&scr->pt);
    restart = 0;
   }
  }





  if (handle_signal(&ksig, scr))
   return;
 }


 if (restart) {

  if (errno == 131 || errno == 129 || errno == 130
      || errno == 128)
  {





   ia64_decrement_ip(&scr->pt);
   if (errno == 128)
    scr->pt.r15 = __NR_restart_syscall;
  }
 }



 restore_saved_sigmask();
}
