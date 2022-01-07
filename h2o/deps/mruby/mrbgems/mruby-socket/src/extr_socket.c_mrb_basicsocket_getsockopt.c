
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int socklen_t ;
typedef int opt ;
typedef int mrb_value ;
typedef int mrb_state ;
typedef scalar_t__ mrb_int ;


 int getsockopt (int,int,int,char*,int*) ;
 int mrb_class_get (int *,char*) ;
 int mrb_const_get (int *,int ,int ) ;
 int mrb_fixnum_value (scalar_t__) ;
 int mrb_funcall (int *,int ,char*,int,int ,int ,int ,int ) ;
 int mrb_get_args (int *,char*,scalar_t__*,scalar_t__*) ;
 int mrb_intern_lit (int *,char*) ;
 int mrb_obj_value (int ) ;
 int mrb_str_new (int *,char*,int) ;
 int mrb_sys_fail (int *,char*) ;
 scalar_t__ socket_family (int) ;
 int socket_fd (int *,int ) ;

__attribute__((used)) static mrb_value
mrb_basicsocket_getsockopt(mrb_state *mrb, mrb_value self)
{
  char opt[8];
  int s;
  mrb_int family, level, optname;
  mrb_value c, data;
  socklen_t optlen;

  mrb_get_args(mrb, "ii", &level, &optname);
  s = socket_fd(mrb, self);
  optlen = sizeof(opt);
  if (getsockopt(s, (int)level, (int)optname, opt, &optlen) == -1)
    mrb_sys_fail(mrb, "getsockopt");
  c = mrb_const_get(mrb, mrb_obj_value(mrb_class_get(mrb, "Socket")), mrb_intern_lit(mrb, "Option"));
  family = socket_family(s);
  data = mrb_str_new(mrb, opt, optlen);
  return mrb_funcall(mrb, c, "new", 4, mrb_fixnum_value(family), mrb_fixnum_value(level), mrb_fixnum_value(optname), data);
}
