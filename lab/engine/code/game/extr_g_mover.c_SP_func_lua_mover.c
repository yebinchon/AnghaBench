
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int (* use ) (TYPE_1__*,TYPE_1__*,TYPE_1__*) ;scalar_t__ targetname; } ;
typedef TYPE_1__ gentity_t ;


 int Use_LuaMover (TYPE_1__*,TYPE_1__*,TYPE_1__*) ;

void SP_func_lua_mover( gentity_t *ent ) {
 if (ent->targetname) {
  ent->use = Use_LuaMover;
 } else {
  Use_LuaMover(ent, ent, ent);
 }
}
