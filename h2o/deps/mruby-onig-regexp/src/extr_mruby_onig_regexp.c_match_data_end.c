
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mrb_value ;
typedef int mrb_state ;
typedef size_t mrb_int ;
struct TYPE_3__ {int * end; } ;
typedef TYPE_1__ OnigRegion ;


 int Data_Get_Struct (int *,int ,int *,TYPE_1__*) ;
 size_t match_data_actual_index (int *,int ,int ) ;
 int match_data_check_index (size_t const) ;
 int mrb_fixnum_value (int ) ;
 int mrb_get_args (int *,char*,int *) ;
 int mrb_onig_region_type ;

__attribute__((used)) static mrb_value
match_data_end(mrb_state* mrb, mrb_value self) {
  mrb_value idx_value;
  mrb_get_args(mrb, "o", &idx_value);
  OnigRegion* reg;
  Data_Get_Struct(mrb, self, &mrb_onig_region_type, reg);
  mrb_int const idx = match_data_actual_index(mrb, self, idx_value);
  match_data_check_index(idx);
  return mrb_fixnum_value(reg->end[idx]);
}
