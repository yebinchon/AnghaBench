
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fs; } ;
struct TYPE_4__ {TYPE_1__ thread; } ;


 int FPU_IS_EMU ;
 int __USER_DS ;
 TYPE_2__* current ;

void flush_thread(void)
{
 current->thread.fs = __USER_DS;






}
