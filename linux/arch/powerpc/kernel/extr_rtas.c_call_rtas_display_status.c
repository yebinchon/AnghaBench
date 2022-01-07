
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int args; int base; } ;


 unsigned long lock_rtas () ;
 TYPE_1__ rtas ;
 int rtas_call_unlocked (int *,int,int,int,int *,unsigned char) ;
 int unlock_rtas (unsigned long) ;

__attribute__((used)) static void call_rtas_display_status(unsigned char c)
{
 unsigned long s;

 if (!rtas.base)
  return;

 s = lock_rtas();
 rtas_call_unlocked(&rtas.args, 10, 1, 1, ((void*)0), c);
 unlock_rtas(s);
}
