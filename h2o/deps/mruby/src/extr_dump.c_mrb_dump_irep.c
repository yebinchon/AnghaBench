
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int mrb_state ;
typedef int mrb_irep ;


 int FLAG_BYTEORDER_NONATIVE ;
 int dump_flags (int ,int ) ;
 int dump_irep (int *,int *,int ,int **,size_t*) ;

int
mrb_dump_irep(mrb_state *mrb, mrb_irep *irep, uint8_t flags, uint8_t **bin, size_t *bin_size)
{
  return dump_irep(mrb, irep, dump_flags(flags, FLAG_BYTEORDER_NONATIVE), bin, bin_size);
}
