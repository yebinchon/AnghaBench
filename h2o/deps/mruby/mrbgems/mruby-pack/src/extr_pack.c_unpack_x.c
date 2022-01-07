
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 int E_ARGUMENT_ERROR ;
 int mrb_raise (int *,int ,char*) ;

__attribute__((used)) static int
unpack_x(mrb_state *mrb, const void *src, int slen, mrb_value ary, int count, unsigned int flags)
{
  if (count < 0) return slen;
  if (slen < count) {
    mrb_raise(mrb, E_ARGUMENT_ERROR, "x outside of string");
  }
  return count;
}
