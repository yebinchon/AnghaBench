
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrb_io {int fd; } ;
typedef int mrb_value ;
typedef int mrb_state ;


 struct mrb_io* io_get_open_fptr (int *,int ) ;
 scalar_t__ isatty (int ) ;
 int mrb_false_value () ;
 int mrb_true_value () ;

mrb_value
mrb_io_isatty(mrb_state *mrb, mrb_value self)
{
  struct mrb_io *fptr;

  fptr = io_get_open_fptr(mrb, self);
  if (isatty(fptr->fd) == 0)
    return mrb_false_value();
  return mrb_true_value();
}
