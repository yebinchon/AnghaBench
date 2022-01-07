
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long ARRAY_SIZE (char**) ;
 char** trap_description ;

const char *trap_name(unsigned long code)
{
 const char *t = ((void*)0);

 if (code < ARRAY_SIZE(trap_description))
  t = trap_description[code];

 return t ? t : "Unknown trap";
}
