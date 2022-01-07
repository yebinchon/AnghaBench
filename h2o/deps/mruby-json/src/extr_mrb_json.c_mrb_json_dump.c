
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 int mrb_funcall (int *,int ,char*,int,int ) ;
 int mrb_get_args (int *,char*,int *,int *) ;
 scalar_t__ mrb_nil_p (int ) ;
 int mrb_nil_value () ;
 int mrb_value_to_string (int *,int ,int) ;

__attribute__((used)) static mrb_value
mrb_json_dump(mrb_state *mrb, mrb_value self) {
  mrb_value obj, io = mrb_nil_value(), out;
  mrb_get_args(mrb, "o|o", &obj, &io);
  out = mrb_value_to_string(mrb, obj, -1);
  if (mrb_nil_p(io)) {
    return out;
  }
  mrb_funcall(mrb, io, "write", 1, out);
  return io;
}
