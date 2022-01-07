
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int itemDef_t ;
struct TYPE_2__ {int (* executeText ) (int ,int ) ;} ;


 TYPE_1__* DC ;
 int EXEC_APPEND ;
 scalar_t__ String_Parse (char**,char const**) ;
 int stub1 (int ,int ) ;
 int va (char*,char const*) ;

void Script_Exec(itemDef_t *item, char **args) {
 const char *val;
 if (String_Parse(args, &val)) {
  DC->executeText(EXEC_APPEND, va("%s ; ", val));
 }
}
