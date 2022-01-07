
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 int ** environ ;
 int mrb_fixnum_value (int) ;

__attribute__((used)) static mrb_value
mrb_env_size(mrb_state *mrb, mrb_value self)
{
  int i;

  for (i = 0; environ[i] != ((void*)0); i++)
    ;

  return mrb_fixnum_value(i);
}
