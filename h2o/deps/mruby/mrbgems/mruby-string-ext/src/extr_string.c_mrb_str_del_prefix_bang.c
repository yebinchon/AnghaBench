
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ptr; } ;
struct TYPE_4__ {TYPE_1__ heap; } ;
struct RString {TYPE_2__ as; } ;
typedef int mrb_value ;
typedef int mrb_state ;
typedef scalar_t__ mrb_int ;


 int MRB_FROZEN_P (struct RString*) ;
 struct RString* RSTRING (int ) ;
 scalar_t__ RSTR_FSHARED_P (struct RString*) ;
 scalar_t__ RSTR_LEN (struct RString*) ;
 char* RSTR_PTR (struct RString*) ;
 int RSTR_SET_LEN (struct RString*,scalar_t__) ;
 scalar_t__ RSTR_SHARED_P (struct RString*) ;
 scalar_t__ memcmp (char*,char*,scalar_t__) ;
 int memmove (char*,char*,scalar_t__) ;
 int mrb_get_args (int *,char*,char**,scalar_t__*) ;
 int mrb_nil_value () ;
 int mrb_str_modify (int *,struct RString*) ;

__attribute__((used)) static mrb_value
mrb_str_del_prefix_bang(mrb_state *mrb, mrb_value self)
{
  mrb_int plen, slen;
  char *ptr, *s;
  struct RString *str = RSTRING(self);

  mrb_get_args(mrb, "s", &ptr, &plen);
  slen = RSTR_LEN(str);
  if (plen > slen) return mrb_nil_value();
  s = RSTR_PTR(str);
  if (memcmp(s, ptr, plen) != 0) return mrb_nil_value();
  if (!MRB_FROZEN_P(str) && (RSTR_SHARED_P(str) || RSTR_FSHARED_P(str))) {
    str->as.heap.ptr += plen;
  }
  else {
    mrb_str_modify(mrb, str);
    s = RSTR_PTR(str);
    memmove(s, s+plen, slen-plen);
  }
  RSTR_SET_LEN(str, slen-plen);
  return self;
}
