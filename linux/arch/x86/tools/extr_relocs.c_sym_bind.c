
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ARRAY_SIZE (char const**) ;



 char const* SYM_BIND (int ) ;

__attribute__((used)) static const char *sym_bind(unsigned bind)
{
 static const char *bind_name[] = {

  [129] = "STB_LOCAL",
  [130] = "STB_GLOBAL",
  [128] = "STB_WEAK",

 };
 const char *name = "unknown sym bind name";
 if (bind < ARRAY_SIZE(bind_name)) {
  name = bind_name[bind];
 }
 return name;
}
