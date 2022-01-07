
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrb_io {scalar_t__ fd; } ;
typedef int mrb_value ;
typedef int mrb_state ;


 int mrb_false_value () ;
 scalar_t__ mrb_get_datatype (int *,int ,int *) ;
 int mrb_io_type ;
 int mrb_true_value () ;

mrb_value
mrb_io_closed(mrb_state *mrb, mrb_value io)
{
  struct mrb_io *fptr;
  fptr = (struct mrb_io *)mrb_get_datatype(mrb, io, &mrb_io_type);
  if (fptr == ((void*)0) || fptr->fd >= 0) {
    return mrb_false_value();
  }

  return mrb_true_value();
}
