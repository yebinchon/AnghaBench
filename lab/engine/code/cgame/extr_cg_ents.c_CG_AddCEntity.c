
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_16__ {int eType; } ;
struct TYPE_17__ {TYPE_1__ currentState; } ;
typedef TYPE_2__ centity_t ;


 int CG_Beam (TYPE_2__*) ;
 int CG_CalcEntityLerpPositions (TYPE_2__*) ;
 int CG_EntityEffects (TYPE_2__*) ;
 int CG_Error (char*,int) ;
 int CG_General (TYPE_2__*) ;
 int CG_Grapple (TYPE_2__*) ;
 int CG_Item (TYPE_2__*) ;
 int CG_Missile (TYPE_2__*) ;
 int CG_Mover (TYPE_2__*) ;
 int CG_Player (TYPE_2__*) ;
 int CG_Portal (TYPE_2__*) ;
 int CG_Speaker (TYPE_2__*) ;
 int CG_TeamBase (TYPE_2__*) ;

 int ET_EVENTS ;
__attribute__((used)) static void CG_AddCEntity( centity_t *cent ) {

 if ( cent->currentState.eType >= ET_EVENTS ) {
  return;
 }


 CG_CalcEntityLerpPositions( cent );


 CG_EntityEffects( cent );

 switch ( cent->currentState.eType ) {
 default:
  CG_Error( "Bad entity type: %i", cent->currentState.eType );
  break;
 case 137:
 case 131:
 case 128:
  break;
 case 139:
  CG_General( cent );
  break;
 case 133:
  CG_Player( cent );
  break;
 case 136:
  CG_Item( cent );
  break;
 case 135:
  CG_Missile( cent );
  break;
 case 134:
  CG_Mover( cent );
  break;
 case 140:
  CG_Beam( cent );
  break;
 case 132:
  CG_Portal( cent );
  break;
 case 130:
  CG_Speaker( cent );
  break;
 case 138:
  CG_Grapple( cent );
  break;
 case 129:
  CG_TeamBase( cent );
  break;
 }
}
