
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrb_io {int sync; } ;
typedef int mrb_value ;
typedef int mrb_state ;
typedef int mrb_bool ;


 struct mrb_io* io_get_open_fptr (int *,int ) ;
 int mrb_bool_value (int ) ;
 int mrb_get_args (int *,char*,int *) ;

mrb_value
mrb_io_set_sync(mrb_state *mrb, mrb_value self)
{
  struct mrb_io *fptr;
  mrb_bool b;

  fptr = io_get_open_fptr(mrb, self);
  mrb_get_args(mrb, "b", &b);
  fptr->sync = b;
  return mrb_bool_value(b);
}
