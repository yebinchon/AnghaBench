
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_4__ {int number; scalar_t__ solid; int modelindex; } ;
typedef TYPE_1__ entityState_t ;
typedef int clipHandle_t ;
struct TYPE_5__ {int lerpAngles; int lerpOrigin; TYPE_1__ currentState; } ;
typedef TYPE_2__ centity_t ;


 scalar_t__ SOLID_BMODEL ;
 int cg_numSolidEntities ;
 TYPE_2__** cg_solidEntities ;
 int trap_CM_InlineModel (int ) ;
 int trap_CM_PointContents (int const,int ) ;
 int trap_CM_TransformedPointContents (int const,int ,int ,int ) ;

int CG_PointContents( const vec3_t point, int passEntityNum ) {
 int i;
 entityState_t *ent;
 centity_t *cent;
 clipHandle_t cmodel;
 int contents;

 contents = trap_CM_PointContents (point, 0);

 for ( i = 0 ; i < cg_numSolidEntities ; i++ ) {
  cent = cg_solidEntities[ i ];

  ent = &cent->currentState;

  if ( ent->number == passEntityNum ) {
   continue;
  }

  if (ent->solid != SOLID_BMODEL) {
   continue;
  }

  cmodel = trap_CM_InlineModel( ent->modelindex );
  if ( !cmodel ) {
   continue;
  }

  contents |= trap_CM_TransformedPointContents( point, cmodel, cent->lerpOrigin, cent->lerpAngles );
 }

 return contents;
}
