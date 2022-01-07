
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;
typedef int mrb_int ;


 int E_NOTIMP_ERROR ;
 int mrb_ary_new_capa (int *,int) ;
 int mrb_ary_push (int *,int ,int ) ;
 int mrb_fixnum_value (int) ;
 int mrb_get_args (int *,char*,int *,int *,int *) ;
 int mrb_nil_value () ;
 int mrb_raise (int *,int ,char*) ;
 int mrb_sys_fail (int *,char*) ;
 int socketpair (int ,int ,int ,int*) ;

__attribute__((used)) static mrb_value
mrb_socket_socketpair(mrb_state *mrb, mrb_value klass)
{




  mrb_value ary;
  mrb_int domain, type, protocol;
  int sv[2];

  mrb_get_args(mrb, "iii", &domain, &type, &protocol);
  if (socketpair(domain, type, protocol, sv) == -1) {
    mrb_sys_fail(mrb, "socketpair");
  }

  ary = mrb_ary_new_capa(mrb, 2);
  mrb_ary_push(mrb, ary, mrb_fixnum_value(sv[0]));
  mrb_ary_push(mrb, ary, mrb_fixnum_value(sv[1]));
  return ary;

}
