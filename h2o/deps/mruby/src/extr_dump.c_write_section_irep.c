
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct rite_section_irep_header {int dummy; } ;
typedef int mrb_state ;
typedef int mrb_irep ;


 int MRB_DUMP_INVALID_ARGUMENT ;
 int MRB_DUMP_OK ;
 int write_irep_record (int *,int *,int *,size_t*,int ) ;
 int write_section_irep_header (int *,size_t,int *) ;

__attribute__((used)) static int
write_section_irep(mrb_state *mrb, mrb_irep *irep, uint8_t *bin, size_t *len_p, uint8_t flags)
{
  int result;
  size_t rsize = 0;
  uint8_t *cur = bin;

  if (mrb == ((void*)0) || bin == ((void*)0)) {
    return MRB_DUMP_INVALID_ARGUMENT;
  }

  cur += sizeof(struct rite_section_irep_header);

  result = write_irep_record(mrb, irep, cur, &rsize, flags);
  if (result != MRB_DUMP_OK) {
    return result;
  }
  *len_p = cur - bin + rsize;
  write_section_irep_header(mrb, *len_p, bin);

  return MRB_DUMP_OK;
}
