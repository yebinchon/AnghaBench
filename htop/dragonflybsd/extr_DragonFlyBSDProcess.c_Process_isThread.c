
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kernel; } ;
typedef int Process ;
typedef TYPE_1__ DragonFlyBSDProcess ;


 int Process_isUserlandThread (int *) ;

bool Process_isThread(Process* this) {
   DragonFlyBSDProcess* fp = (DragonFlyBSDProcess*) this;

   if (fp->kernel == 1 )
      return 1;
   else
      return (Process_isUserlandThread(this));
}
