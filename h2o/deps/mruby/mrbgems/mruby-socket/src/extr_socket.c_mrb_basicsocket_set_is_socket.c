
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrb_io {int is_socket; } ;
typedef int mrb_value ;
typedef int mrb_state ;
typedef int mrb_bool ;


 scalar_t__ DATA_PTR (int ) ;
 int mrb_bool_value (int ) ;
 int mrb_get_args (int *,char*,int *) ;

__attribute__((used)) static mrb_value
mrb_basicsocket_set_is_socket(mrb_state *mrb, mrb_value self)
{
  mrb_bool b;
  struct mrb_io *io_p;
  mrb_get_args(mrb, "b", &b);

  io_p = (struct mrb_io*)DATA_PTR(self);
  if (io_p) {
    io_p->is_socket = b;
  }

  return mrb_bool_value(b);
}
