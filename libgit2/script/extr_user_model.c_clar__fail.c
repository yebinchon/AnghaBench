
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __coverity_panic__ () ;

void clar__fail(
 const char *file,
 int line,
 const char *error,
 const char *description,
 int should_abort)
{
 if (should_abort)
  __coverity_panic__();
}
