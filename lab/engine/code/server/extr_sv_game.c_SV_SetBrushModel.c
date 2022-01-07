
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_7__ {int contents; int bmodel; int maxs; int mins; } ;
struct TYPE_6__ {int modelindex; } ;
struct TYPE_8__ {TYPE_2__ r; TYPE_1__ s; } ;
typedef TYPE_3__ sharedEntity_t ;
typedef int clipHandle_t ;


 int CM_InlineModel (int ) ;
 int CM_ModelBounds (int ,int ,int ) ;
 int Com_Error (int ,char*,...) ;
 int ERR_DROP ;
 int SV_LinkEntity (TYPE_3__*) ;
 int VectorCopy (int ,int ) ;
 int atoi (char const*) ;
 int qtrue ;

void SV_SetBrushModel( sharedEntity_t *ent, const char *name ) {
 clipHandle_t h;
 vec3_t mins, maxs;

 if (!name) {
  Com_Error( ERR_DROP, "SV_SetBrushModel: NULL" );
 }

 if (name[0] != '*') {
  Com_Error( ERR_DROP, "SV_SetBrushModel: %s isn't a brush model", name );
 }


 ent->s.modelindex = atoi( name + 1 );

 h = CM_InlineModel( ent->s.modelindex );
 CM_ModelBounds( h, mins, maxs );
 VectorCopy (mins, ent->r.mins);
 VectorCopy (maxs, ent->r.maxs);
 ent->r.bmodel = qtrue;

 ent->r.contents = -1;

 SV_LinkEntity( ent );
}
