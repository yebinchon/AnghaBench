
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;
typedef scalar_t__ mrb_int ;


 scalar_t__ RSTRING_LEN (int ) ;
 int RSTRING_PTR (int ) ;
 scalar_t__ memcmp (int ,char*,scalar_t__) ;
 int mrb_get_args (int *,char*,char**,scalar_t__*) ;
 int mrb_str_dup (int *,int ) ;
 int mrb_str_substr (int *,int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static mrb_value
mrb_str_del_prefix(mrb_state *mrb, mrb_value self)
{
  mrb_int plen, slen;
  char *ptr;

  mrb_get_args(mrb, "s", &ptr, &plen);
  slen = RSTRING_LEN(self);
  if (plen > slen) return mrb_str_dup(mrb, self);
  if (memcmp(RSTRING_PTR(self), ptr, plen) != 0)
    return mrb_str_dup(mrb, self);
  return mrb_str_substr(mrb, self, plen, slen-plen);
}
