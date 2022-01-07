
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int itemDef_t ;
struct TYPE_2__ {float (* getCVarValue ) (char const*) ;} ;


 TYPE_1__* DC ;
 int Menus_OpenByName (char const*) ;
 scalar_t__ String_Parse (char**,char const**) ;
 float stub1 (char const*) ;

void Script_ConditionalOpen(itemDef_t *item, char **args) {
 const char *cvar;
 const char *name1;
 const char *name2;
 float val;

 if ( String_Parse(args, &cvar) && String_Parse(args, &name1) && String_Parse(args, &name2) ) {
  val = DC->getCVarValue( cvar );
  if ( val == 0.f ) {
   Menus_OpenByName(name2);
  } else {
   Menus_OpenByName(name1);
  }
 }
}
