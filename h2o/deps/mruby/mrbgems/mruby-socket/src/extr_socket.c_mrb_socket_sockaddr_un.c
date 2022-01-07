
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_un {int sun_len; char* sun_path; int sun_family; } ;
typedef int mrb_value ;
typedef int mrb_state ;


 int AF_UNIX ;
 int E_ARGUMENT_ERROR ;
 int E_NOTIMP_ERROR ;
 size_t RSTRING_LEN (int ) ;
 scalar_t__ RSTRING_PTR (int ) ;
 int memcpy (char*,scalar_t__,size_t) ;
 int mrb_fixnum_value (int) ;
 int mrb_get_args (int *,char*,int *) ;
 int mrb_nil_value () ;
 int mrb_raise (int *,int ,char*) ;
 int mrb_raisef (int *,int ,char*,int ) ;
 int mrb_str_buf_new (int *,int) ;
 int mrb_str_resize (int *,int ,int) ;

__attribute__((used)) static mrb_value
mrb_socket_sockaddr_un(mrb_state *mrb, mrb_value klass)
{




  struct sockaddr_un *sunp;
  mrb_value path, s;

  mrb_get_args(mrb, "S", &path);
  if ((size_t)RSTRING_LEN(path) > sizeof(sunp->sun_path) - 1) {
    mrb_raisef(mrb, E_ARGUMENT_ERROR, "too long unix socket path (max: %S bytes)", mrb_fixnum_value(sizeof(sunp->sun_path) - 1));
  }
  s = mrb_str_buf_new(mrb, sizeof(struct sockaddr_un));
  sunp = (struct sockaddr_un *)RSTRING_PTR(s);



  sunp->sun_family = AF_UNIX;
  memcpy(sunp->sun_path, RSTRING_PTR(path), RSTRING_LEN(path));
  sunp->sun_path[RSTRING_LEN(path)] = '\0';
  mrb_str_resize(mrb, s, sizeof(struct sockaddr_un));
  return s;

}
