
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const** argv; } ;
struct tmp_objdir {TYPE_1__ env; } ;



const char **tmp_objdir_env(const struct tmp_objdir *t)
{
 if (!t)
  return ((void*)0);
 return t->env.argv;
}
