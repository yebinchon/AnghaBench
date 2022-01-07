
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_17__ {scalar_t__ endTime; int leType; struct TYPE_17__* prev; } ;
typedef TYPE_1__ localEntity_t ;
struct TYPE_18__ {scalar_t__ time; } ;


 int CG_AddExplosion (TYPE_1__*) ;
 int CG_AddFadeRGB (TYPE_1__*) ;
 int CG_AddFallScaleFade (TYPE_1__*) ;
 int CG_AddFragment (TYPE_1__*) ;
 int CG_AddInvulnerabilityImpact (TYPE_1__*) ;
 int CG_AddInvulnerabilityJuiced (TYPE_1__*) ;
 int CG_AddKamikaze (TYPE_1__*) ;
 int CG_AddMoveScaleFade (TYPE_1__*) ;
 int CG_AddRefEntity (TYPE_1__*) ;
 int CG_AddScaleFade (TYPE_1__*) ;
 int CG_AddScorePlum (TYPE_1__*) ;
 int CG_AddSpriteExplosion (TYPE_1__*) ;
 int CG_Error (char*,int) ;
 int CG_FreeLocalEntity (TYPE_1__*) ;
 TYPE_3__ cg ;
 TYPE_1__ cg_activeLocalEntities ;

void CG_AddLocalEntities( void ) {
 localEntity_t *le, *next;



 le = cg_activeLocalEntities.prev;
 for ( ; le != &cg_activeLocalEntities ; le = next ) {


  next = le->prev;

  if ( cg.time >= le->endTime ) {
   CG_FreeLocalEntity( le );
   continue;
  }
  switch ( le->leType ) {
  default:
   CG_Error( "Bad leType: %i", le->leType );
   break;

  case 133:
   break;

  case 128:
   CG_AddSpriteExplosion( le );
   break;

  case 140:
   CG_AddExplosion( le );
   break;

  case 137:
   CG_AddFragment( le );
   break;

  case 132:
   CG_AddMoveScaleFade( le );
   break;

  case 139:
   CG_AddFadeRGB( le );
   break;

  case 138:
   CG_AddFallScaleFade( le );
   break;

  case 131:
   CG_AddScaleFade( le );
   break;

  case 130:
   CG_AddScorePlum( le );
   break;
  }
 }
}
