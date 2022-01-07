
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* classname; } ;
typedef TYPE_1__ gentity_t ;


 int SP_info_player_deathmatch (TYPE_1__*) ;

void SP_info_player_start(gentity_t *ent) {
 ent->classname = "info_player_deathmatch";
 SP_info_player_deathmatch( ent );
}
