
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef int ssize_t ;
typedef int socklen_t ;
typedef int mrb_value ;
typedef int mrb_state ;
typedef int mrb_int ;
typedef int fsize_t ;


 scalar_t__ RSTRING_PTR (int ) ;
 int mrb_ary_new_capa (int *,int) ;
 int mrb_ary_push (int *,int ,int ) ;
 int mrb_get_args (int *,char*,int*,int*) ;
 int mrb_str_buf_new (int *,int) ;
 int mrb_str_resize (int *,int ,int) ;
 int mrb_sys_fail (int *,char*) ;
 int recvfrom (int ,scalar_t__,int ,int,struct sockaddr*,int*) ;
 int socket_fd (int *,int ) ;

__attribute__((used)) static mrb_value
mrb_basicsocket_recvfrom(mrb_state *mrb, mrb_value self)
{
  ssize_t n;
  mrb_int maxlen, flags = 0;
  mrb_value ary, buf, sa;
  socklen_t socklen;

  mrb_get_args(mrb, "i|i", &maxlen, &flags);
  buf = mrb_str_buf_new(mrb, maxlen);
  socklen = sizeof(struct sockaddr_storage);
  sa = mrb_str_buf_new(mrb, socklen);
  n = recvfrom(socket_fd(mrb, self), RSTRING_PTR(buf), (fsize_t)maxlen, (int)flags, (struct sockaddr *)RSTRING_PTR(sa), &socklen);
  if (n == -1)
    mrb_sys_fail(mrb, "recvfrom");
  mrb_str_resize(mrb, buf, (mrb_int)n);
  mrb_str_resize(mrb, sa, (mrb_int)socklen);
  ary = mrb_ary_new_capa(mrb, 2);
  mrb_ary_push(mrb, ary, buf);
  mrb_ary_push(mrb, ary, sa);
  return ary;
}
