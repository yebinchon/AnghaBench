
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_state ;
typedef int mrb_bool ;


 int FALSE ;
 int ISUPPER (char const) ;

__attribute__((used)) static mrb_bool
is_local_id(mrb_state *mrb, const char *name)
{
  if (!name) return FALSE;
  return !ISUPPER(name[0]);
}
