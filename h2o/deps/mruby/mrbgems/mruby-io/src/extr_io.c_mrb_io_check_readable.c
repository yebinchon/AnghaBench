
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrb_io {int readable; } ;
typedef int mrb_value ;
typedef int mrb_state ;


 int E_IO_ERROR ;
 struct mrb_io* io_get_open_fptr (int *,int ) ;
 int mrb_nil_value () ;
 int mrb_raise (int *,int ,char*) ;

mrb_value
mrb_io_check_readable(mrb_state *mrb, mrb_value self)
{
  struct mrb_io *fptr = io_get_open_fptr(mrb, self);
  if (! fptr->readable) {
    mrb_raise(mrb, E_IO_ERROR, "not opened for reading");
  }
  return mrb_nil_value();
}
