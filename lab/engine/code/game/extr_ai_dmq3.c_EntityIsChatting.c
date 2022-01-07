
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_3__ {int flags; } ;
typedef TYPE_1__ aas_entityinfo_t ;


 int EF_TALK ;
 int qfalse ;
 int qtrue ;

qboolean EntityIsChatting(aas_entityinfo_t *entinfo) {
 if (entinfo->flags & EF_TALK) {
  return qtrue;
 }
 return qfalse;
}
