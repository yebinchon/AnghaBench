
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 int mrb_gc_mark_value (int *,int ) ;

__attribute__((used)) static int
hash_mark_i(mrb_state *mrb, mrb_value key, mrb_value val, void *p)
{
  mrb_gc_mark_value(mrb, key);
  mrb_gc_mark_value(mrb, val);
  return 0;
}
