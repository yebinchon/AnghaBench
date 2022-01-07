
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strstarts (char const*,char*) ;

bool module_exit_section(const char *name)
{
 return strstarts(name, ".exit") ||
  strstarts(name, ".ARM.extab.exit") ||
  strstarts(name, ".ARM.exidx.exit");
}
