
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int head; int tail; int * buff; } ;


 int buffer_lock ;
 int max_spu_buff ;
 int num_spu_nodes ;
 int oprofile_put_buff (int *,int,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 TYPE_1__* spu_buff ;

__attribute__((used)) static void sync_spu_buff(void)
{
 int spu;
 unsigned long flags;
 int curr_head;

 for (spu = 0; spu < num_spu_nodes; spu++) {



  if (spu_buff[spu].buff == ((void*)0))
   continue;






  spin_lock_irqsave(&buffer_lock, flags);
  curr_head = spu_buff[spu].head;
  spin_unlock_irqrestore(&buffer_lock, flags);




  oprofile_put_buff(spu_buff[spu].buff,
      spu_buff[spu].tail,
      curr_head, max_spu_buff);

  spin_lock_irqsave(&buffer_lock, flags);
  spu_buff[spu].tail = curr_head;
  spin_unlock_irqrestore(&buffer_lock, flags);
 }

}
