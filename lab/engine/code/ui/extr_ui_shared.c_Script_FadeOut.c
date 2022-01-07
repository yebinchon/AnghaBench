
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int parent; } ;
typedef TYPE_1__ itemDef_t ;


 int Menu_FadeItemByName (int ,char const*,int ) ;
 scalar_t__ String_Parse (char**,char const**) ;
 int qtrue ;

void Script_FadeOut(itemDef_t *item, char **args) {
  const char *name;
  if (String_Parse(args, &name)) {
    Menu_FadeItemByName(item->parent, name, qtrue);
  }
}
