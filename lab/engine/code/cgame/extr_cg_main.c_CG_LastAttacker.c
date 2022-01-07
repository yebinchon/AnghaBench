
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* snap; int attackerTime; } ;
struct TYPE_4__ {int* persistant; } ;
struct TYPE_5__ {TYPE_1__ ps; } ;


 size_t PERS_ATTACKER ;
 TYPE_3__ cg ;

int CG_LastAttacker( void ) {
 if ( !cg.attackerTime ) {
  return -1;
 }
 return cg.snap->ps.persistant[PERS_ATTACKER];
}
