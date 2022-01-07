
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mrb_value ;
typedef int mrb_state ;
struct TYPE_3__ {int * beg; } ;
typedef TYPE_1__ OnigRegion ;


 int Data_Get_Struct (int *,int ,int *,TYPE_1__*) ;
 int mrb_intern_lit (int *,char*) ;
 int mrb_iv_get (int *,int ,int ) ;
 int mrb_onig_region_type ;
 int str_substr (int *,int ,int ,int ) ;

__attribute__((used)) static mrb_value
match_data_pre_match(mrb_state* mrb, mrb_value self) {
  OnigRegion* reg;
  Data_Get_Struct(mrb, self, &mrb_onig_region_type, reg);
  mrb_value str = mrb_iv_get(mrb, self, mrb_intern_lit(mrb, "string"));
  return str_substr(mrb, str, 0, reg->beg[0]);
}
