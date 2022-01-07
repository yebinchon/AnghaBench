
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARENAS_PER_TIER ;
 int ui_numSinglePlayerArenas ;

int UI_GetNumSPTiers( void ) {
 return ui_numSinglePlayerArenas / ARENAS_PER_TIER;
}
