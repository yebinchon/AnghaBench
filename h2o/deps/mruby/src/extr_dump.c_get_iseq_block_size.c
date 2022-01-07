
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int mrb_state ;
struct TYPE_3__ {int ilen; } ;
typedef TYPE_1__ mrb_irep ;



__attribute__((used)) static size_t
get_iseq_block_size(mrb_state *mrb, mrb_irep *irep)
{
  size_t size = 0;

  size += sizeof(uint32_t);
  size += sizeof(uint32_t);
  size += sizeof(uint32_t) * irep->ilen;

  return size;
}
