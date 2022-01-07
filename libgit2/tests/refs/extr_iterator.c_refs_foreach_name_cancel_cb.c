
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_UNUSED (char const*) ;

__attribute__((used)) static int refs_foreach_name_cancel_cb(const char *name, void *payload)
{
 int *cancel_after = payload;
 if (!*cancel_after)
  return -333;
 GIT_UNUSED(name);
 (*cancel_after)--;
 return 0;
}
