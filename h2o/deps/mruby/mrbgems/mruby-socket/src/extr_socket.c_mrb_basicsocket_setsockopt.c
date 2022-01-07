
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uc ;
typedef int socklen_t ;
typedef int mrb_value ;
typedef int mrb_state ;
typedef int mrb_int ;
typedef int i ;


 int E_ARGUMENT_ERROR ;
 int IP_MULTICAST_LOOP ;
 int IP_MULTICAST_TTL ;
 scalar_t__ MRB_TT_FALSE ;
 scalar_t__ MRB_TT_TRUE ;
 scalar_t__ RSTRING_LEN (int ) ;
 int RSTRING_PTR (int ) ;
 int mrb_fixnum (int ) ;
 scalar_t__ mrb_fixnum_p (int ) ;
 int mrb_fixnum_value (int) ;
 int mrb_funcall (int *,int ,char*,int ) ;
 int mrb_get_args (int *,char*,int *,int*,int *) ;
 int mrb_obj_classname (int *,int ) ;
 int mrb_raise (int *,int ,char*) ;
 int mrb_raisef (int *,int ,char*,int ) ;
 int mrb_str_new (int *,char*,int) ;
 scalar_t__ mrb_string_p (int ) ;
 int mrb_sys_fail (int *,char*) ;
 scalar_t__ mrb_test (int ) ;
 scalar_t__ mrb_type (int ) ;
 int setsockopt (int,int,int,int ,int ) ;
 int socket_fd (int *,int ) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static mrb_value
mrb_basicsocket_setsockopt(mrb_state *mrb, mrb_value self)
{
  int s;
  mrb_int argc, level = 0, optname;
  mrb_value optval, so;

  argc = mrb_get_args(mrb, "o|io", &so, &optname, &optval);
  if (argc == 3) {
    if (!mrb_fixnum_p(so)) {
      mrb_raise(mrb, E_ARGUMENT_ERROR, "level is not an integer");
    }
    level = mrb_fixnum(so);
    if (mrb_string_p(optval)) {

    } else if (mrb_type(optval) == MRB_TT_TRUE || mrb_type(optval) == MRB_TT_FALSE) {
      mrb_int i = mrb_test(optval) ? 1 : 0;
      optval = mrb_str_new(mrb, (char*)&i, sizeof(i));
    } else if (mrb_fixnum_p(optval)) {
      if (optname == IP_MULTICAST_TTL || optname == IP_MULTICAST_LOOP) {
        char uc = (char)mrb_fixnum(optval);
        optval = mrb_str_new(mrb, &uc, sizeof(uc));
      } else {
        mrb_int i = mrb_fixnum(optval);
        optval = mrb_str_new(mrb, (char*)&i, sizeof(i));
      }
    } else {
      mrb_raise(mrb, E_ARGUMENT_ERROR, "optval should be true, false, an integer, or a string");
    }
  } else if (argc == 1) {
    if (strcmp(mrb_obj_classname(mrb, so), "Socket::Option") != 0)
      mrb_raise(mrb, E_ARGUMENT_ERROR, "not an instance of Socket::Option");
    level = mrb_fixnum(mrb_funcall(mrb, so, "level", 0));
    optname = mrb_fixnum(mrb_funcall(mrb, so, "optname", 0));
    optval = mrb_funcall(mrb, so, "data", 0);
  } else {
    mrb_raisef(mrb, E_ARGUMENT_ERROR, "wrong number of arguments (%S for 3)", mrb_fixnum_value(argc));
  }

  s = socket_fd(mrb, self);
  if (setsockopt(s, (int)level, (int)optname, RSTRING_PTR(optval), (socklen_t)RSTRING_LEN(optval)) == -1)
    mrb_sys_fail(mrb, "setsockopt");
  return mrb_fixnum_value(0);
}
