
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_4__ {int powerups; } ;
typedef TYPE_1__ aas_entityinfo_t ;


 scalar_t__ EntityCarriesFlag (TYPE_1__*) ;
 int PW_INVIS ;
 int qfalse ;
 int qtrue ;

qboolean EntityIsInvisible(aas_entityinfo_t *entinfo) {

 if (EntityCarriesFlag(entinfo)) {
  return qfalse;
 }
 if (entinfo->powerups & (1 << PW_INVIS)) {
  return qtrue;
 }
 return qfalse;
}
