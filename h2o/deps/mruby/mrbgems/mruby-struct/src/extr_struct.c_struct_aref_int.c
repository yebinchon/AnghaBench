
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;
typedef size_t mrb_int ;


 int E_INDEX_ERROR ;
 size_t RSTRUCT_LEN (int ) ;
 int * RSTRUCT_PTR (int ) ;
 int mrb_fixnum_value (size_t) ;
 int mrb_raisef (int *,int ,char*,int ,int ) ;

__attribute__((used)) static mrb_value
struct_aref_int(mrb_state *mrb, mrb_value s, mrb_int i)
{
  if (i < 0) i = RSTRUCT_LEN(s) + i;
  if (i < 0)
      mrb_raisef(mrb, E_INDEX_ERROR,
                 "offset %S too small for struct(size:%S)",
                 mrb_fixnum_value(i), mrb_fixnum_value(RSTRUCT_LEN(s)));
  if (RSTRUCT_LEN(s) <= i)
    mrb_raisef(mrb, E_INDEX_ERROR,
               "offset %S too large for struct(size:%S)",
               mrb_fixnum_value(i), mrb_fixnum_value(RSTRUCT_LEN(s)));
  return RSTRUCT_PTR(s)[i];
}
