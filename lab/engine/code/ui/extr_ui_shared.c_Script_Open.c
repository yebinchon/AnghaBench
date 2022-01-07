
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int itemDef_t ;


 int Menus_OpenByName (char const*) ;
 scalar_t__ String_Parse (char**,char const**) ;

void Script_Open(itemDef_t *item, char **args) {
  const char *name;
  if (String_Parse(args, &name)) {
    Menus_OpenByName(name);
  }
}
