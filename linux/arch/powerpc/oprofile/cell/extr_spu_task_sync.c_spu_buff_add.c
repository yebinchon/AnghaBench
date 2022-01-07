
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t head; size_t tail; unsigned long* buff; } ;


 int max_spu_buff ;
 int oprofile_cpu_buffer_inc_smpl_lost () ;
 TYPE_1__* spu_buff ;

__attribute__((used)) static void spu_buff_add(unsigned long int value, int spu)
{
 int full = 1;

 if (spu_buff[spu].head >= spu_buff[spu].tail) {
  if ((spu_buff[spu].head - spu_buff[spu].tail)
      < (max_spu_buff - 1))
   full = 0;

 } else if (spu_buff[spu].tail > spu_buff[spu].head) {
  if ((spu_buff[spu].tail - spu_buff[spu].head)
      > 1)
   full = 0;
 }

 if (!full) {
  spu_buff[spu].buff[spu_buff[spu].head] = value;
  spu_buff[spu].head++;

  if (spu_buff[spu].head >= max_spu_buff)
   spu_buff[spu].head = 0;
 } else {







  oprofile_cpu_buffer_inc_smpl_lost();
 }
}
