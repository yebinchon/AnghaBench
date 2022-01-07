
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clar__fail (char const*,size_t,char const*,char const*,int) ;

void clar__assert(
 int condition,
 const char *file,
 size_t line,
 const char *error_msg,
 const char *description,
 int should_abort)
{
 if (condition)
  return;

 clar__fail(file, line, error_msg, description, should_abort);
}
