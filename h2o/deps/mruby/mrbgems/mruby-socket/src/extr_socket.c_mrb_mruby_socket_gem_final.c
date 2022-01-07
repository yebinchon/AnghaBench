
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {int dummy; } ;
typedef int mrb_value ;
typedef int mrb_state ;


 int WSACleanup () ;
 int freeaddrinfo (struct addrinfo*) ;
 int mrb_class_get (int *,char*) ;
 scalar_t__ mrb_cptr (int ) ;
 scalar_t__ mrb_cptr_p (int ) ;
 int mrb_intern_lit (int *,char*) ;
 int mrb_mod_cv_get (int *,int ,int ) ;

void
mrb_mruby_socket_gem_final(mrb_state* mrb)
{
  mrb_value ai;
  ai = mrb_mod_cv_get(mrb, mrb_class_get(mrb, "Addrinfo"), mrb_intern_lit(mrb, "_lastai"));
  if (mrb_cptr_p(ai)) {
    freeaddrinfo((struct addrinfo*)mrb_cptr(ai));
  }



}
