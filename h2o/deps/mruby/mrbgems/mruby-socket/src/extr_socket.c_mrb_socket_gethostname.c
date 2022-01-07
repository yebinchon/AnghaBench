
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;
typedef int mrb_int ;
typedef int fsize_t ;


 int HOST_NAME_MAX ;
 int RSTRING_PTR (int ) ;
 scalar_t__ gethostname (int ,int ) ;
 int mrb_str_buf_new (int *,int ) ;
 int mrb_str_resize (int *,int ,int ) ;
 int mrb_sys_fail (int *,char*) ;
 scalar_t__ strlen (int ) ;

__attribute__((used)) static mrb_value
mrb_socket_gethostname(mrb_state *mrb, mrb_value cls)
{
  mrb_value buf;
  size_t bufsize;




  bufsize = 256;

  buf = mrb_str_buf_new(mrb, (mrb_int)bufsize);
  if (gethostname(RSTRING_PTR(buf), (fsize_t)bufsize) != 0)
    mrb_sys_fail(mrb, "gethostname");
  mrb_str_resize(mrb, buf, (mrb_int)strlen(RSTRING_PTR(buf)));
  return buf;
}
