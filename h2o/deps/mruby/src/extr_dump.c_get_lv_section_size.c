
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
typedef int mrb_sym ;
typedef int mrb_state ;
typedef int mrb_irep ;
typedef scalar_t__ mrb_int ;


 scalar_t__ get_lv_record_size (int *,int *) ;
 int mrb_sym2name_len (int *,int const,scalar_t__*) ;

__attribute__((used)) static size_t
get_lv_section_size(mrb_state *mrb, mrb_irep *irep, mrb_sym const *syms, uint32_t syms_len)
{
  size_t ret = 0, i;

  ret += sizeof(uint32_t);
  ret += sizeof(uint16_t) * syms_len;
  for (i = 0; i < syms_len; ++i) {
    mrb_int str_len;
    mrb_sym2name_len(mrb, syms[i], &str_len);
    ret += str_len;
  }

  ret += get_lv_record_size(mrb, irep);

  return ret;
}
