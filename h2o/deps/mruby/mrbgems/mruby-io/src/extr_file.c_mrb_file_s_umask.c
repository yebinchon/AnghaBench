
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;
typedef int mrb_int ;


 int mrb_fixnum_value (int ) ;
 scalar_t__ mrb_get_args (int *,char*,int *) ;
 int umask (int ) ;

mrb_value
mrb_file_s_umask(mrb_state *mrb, mrb_value klass)
{





  mrb_int mask, omask;
  if (mrb_get_args(mrb, "|i", &mask) == 0) {
    omask = umask(0);
    umask(omask);
  } else {
    omask = umask(mask);
  }
  return mrb_fixnum_value(omask);

}
