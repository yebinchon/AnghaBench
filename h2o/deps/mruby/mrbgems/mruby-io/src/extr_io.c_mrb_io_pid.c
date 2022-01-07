
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrb_io {scalar_t__ pid; } ;
typedef int mrb_value ;
typedef int mrb_state ;


 struct mrb_io* io_get_open_fptr (int *,int ) ;
 int mrb_fixnum_value (scalar_t__) ;
 int mrb_nil_value () ;

mrb_value
mrb_io_pid(mrb_state *mrb, mrb_value io)
{
  struct mrb_io *fptr;
  fptr = io_get_open_fptr(mrb, io);

  if (fptr->pid > 0) {
    return mrb_fixnum_value(fptr->pid);
  }

  return mrb_nil_value();
}
