
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tblo; int tbhi; int crb; } ;
typedef int DEFINE_MUTEX ;


 int MS_TICKS ;
 TYPE_1__ ciaa ;
 int ms_wait_completion ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static void ms_delay(int ms)
{
 int ticks;
 static DEFINE_MUTEX(mutex);

 if (ms > 0) {
  mutex_lock(&mutex);
  ticks = MS_TICKS*ms-1;
  ciaa.tblo=ticks%256;
  ciaa.tbhi=ticks/256;
  ciaa.crb=0x19;
  wait_for_completion(&ms_wait_completion);
  mutex_unlock(&mutex);
 }
}
