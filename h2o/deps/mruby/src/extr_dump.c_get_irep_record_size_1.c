
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_state ;
typedef int mrb_irep ;


 scalar_t__ get_irep_header_size (int *) ;
 scalar_t__ get_iseq_block_size (int *,int *) ;
 scalar_t__ get_pool_block_size (int *,int *) ;
 scalar_t__ get_syms_block_size (int *,int *) ;

__attribute__((used)) static size_t
get_irep_record_size_1(mrb_state *mrb, mrb_irep *irep)
{
  size_t size = 0;

  size += get_irep_header_size(mrb);
  size += get_iseq_block_size(mrb, irep);
  size += get_pool_block_size(mrb, irep);
  size += get_syms_block_size(mrb, irep);
  return size;
}
