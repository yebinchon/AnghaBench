
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 int pack_unpack (int *,int ,int) ;

__attribute__((used)) static mrb_value
mrb_pack_unpack1(mrb_state *mrb, mrb_value str)
{
  return pack_unpack(mrb, str, 1);
}
