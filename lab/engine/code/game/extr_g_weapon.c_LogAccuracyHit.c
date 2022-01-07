
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_10__ {TYPE_2__* client; int takedamage; } ;
typedef TYPE_3__ gentity_t ;
struct TYPE_8__ {scalar_t__* stats; } ;
struct TYPE_9__ {TYPE_1__ ps; } ;


 scalar_t__ OnSameTeam (TYPE_3__*,TYPE_3__*) ;
 size_t STAT_HEALTH ;
 int qfalse ;
 int qtrue ;

qboolean LogAccuracyHit( gentity_t *target, gentity_t *attacker ) {
 if( !target->takedamage ) {
  return qfalse;
 }

 if ( target == attacker ) {
  return qfalse;
 }

 if( !target->client ) {
  return qfalse;
 }

 if( !attacker->client ) {
  return qfalse;
 }

 if( target->client->ps.stats[STAT_HEALTH] <= 0 ) {
  return qfalse;
 }

 if ( OnSameTeam( target, attacker ) ) {
  return qfalse;
 }

 return qtrue;
}
