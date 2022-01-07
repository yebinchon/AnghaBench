
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef size_t uint16_t ;
typedef int mrb_state ;
struct TYPE_6__ {int line_type; int line_entry_count; } ;
typedef TYPE_2__ mrb_irep_debug_info_file ;
struct TYPE_7__ {int rlen; struct TYPE_7__** reps; TYPE_1__* debug_info; } ;
typedef TYPE_3__ mrb_irep ;
struct TYPE_5__ {size_t flen; TYPE_2__** files; } ;


 int mrb_assert (int ) ;



__attribute__((used)) static size_t
get_debug_record_size(mrb_state *mrb, mrb_irep *irep)
{
  size_t ret = 0;
  uint16_t f_idx;
  int i;

  ret += sizeof(uint32_t);
  ret += sizeof(uint16_t);

  for (f_idx = 0; f_idx < irep->debug_info->flen; ++f_idx) {
    mrb_irep_debug_info_file const* file = irep->debug_info->files[f_idx];

    ret += sizeof(uint32_t);
    ret += sizeof(uint16_t);


    ret += sizeof(uint32_t);
    ret += sizeof(uint8_t);
    switch (file->line_type) {
      case 129:
        ret += sizeof(uint16_t) * (size_t)(file->line_entry_count);
        break;

      case 128:
        ret += (sizeof(uint32_t) + sizeof(uint16_t)) * (size_t)(file->line_entry_count);
        break;

      default: mrb_assert(0); break;
    }
  }
  for (i=0; i<irep->rlen; i++) {
    ret += get_debug_record_size(mrb, irep->reps[i]);
  }

  return ret;
}
