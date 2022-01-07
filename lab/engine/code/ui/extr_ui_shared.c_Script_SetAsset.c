
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; } ;
typedef TYPE_1__ itemDef_t ;


 scalar_t__ ITEM_TYPE_MODEL ;
 scalar_t__ String_Parse (char**,char const**) ;

void Script_SetAsset(itemDef_t *item, char **args) {
  const char *name;

  if (String_Parse(args, &name)) {

    if (item->type == ITEM_TYPE_MODEL) {
    }
  }
}
