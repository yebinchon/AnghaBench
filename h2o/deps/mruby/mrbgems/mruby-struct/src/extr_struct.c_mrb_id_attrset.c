
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_sym ;
typedef int mrb_state ;
typedef size_t mrb_int ;


 int memcpy (char*,char const*,size_t) ;
 int mrb_free (int *,char*) ;
 int mrb_intern (int *,char*,size_t) ;
 scalar_t__ mrb_malloc (int *,size_t) ;
 char* mrb_sym2name_len (int *,int ,size_t*) ;

__attribute__((used)) static mrb_sym
mrb_id_attrset(mrb_state *mrb, mrb_sym id)
{
  const char *name;
  char *buf;
  mrb_int len;
  mrb_sym mid;

  name = mrb_sym2name_len(mrb, id, &len);
  buf = (char *)mrb_malloc(mrb, (size_t)len+2);
  memcpy(buf, name, (size_t)len);
  buf[len] = '=';
  buf[len+1] = '\0';

  mid = mrb_intern(mrb, buf, len+1);
  mrb_free(mrb, buf);
  return mid;
}
