
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrb_io {scalar_t__ fd2; } ;
typedef int mrb_value ;
typedef int mrb_state ;


 int close (int) ;
 struct mrb_io* io_get_open_fptr (int *,int ) ;
 int mrb_nil_value () ;
 int mrb_sys_fail (int *,char*) ;

mrb_value
mrb_io_close_write(mrb_state *mrb, mrb_value self)
{
  struct mrb_io *fptr;
  fptr = io_get_open_fptr(mrb, self);
  if (close((int)fptr->fd2) == -1) {
    mrb_sys_fail(mrb, "close");
  }
  return mrb_nil_value();
}
