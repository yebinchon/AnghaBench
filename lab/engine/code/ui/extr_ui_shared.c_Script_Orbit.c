
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int parent; } ;
typedef TYPE_1__ itemDef_t ;


 scalar_t__ Float_Parse (char**,float*) ;
 scalar_t__ Int_Parse (char**,int*) ;
 int Menu_OrbitItemByName (int ,char const*,float,float,float,float,int) ;
 scalar_t__ String_Parse (char**,char const**) ;

void Script_Orbit(itemDef_t *item, char **args) {
  const char *name;
  float cx, cy, x, y;
  int time;

  if (String_Parse(args, &name)) {
    if ( Float_Parse(args, &x) && Float_Parse(args, &y) && Float_Parse(args, &cx) && Float_Parse(args, &cy) && Int_Parse(args, &time) ) {
      Menu_OrbitItemByName(item->parent, name, x, y, cx, cy, time);
    }
  }
}
