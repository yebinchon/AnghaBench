
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_3__ {int * patches; int * brushes; } ;
typedef TYPE_1__ entity_t ;


 int BeginBSPFile () ;
 int CreateMapFogs () ;
 int EmitFogs () ;
 int ProcessSubModel () ;
 int ProcessWorldModel () ;
 int SYS_VRB ;
 int Sys_FPrintf (int ,char*,int ) ;
 TYPE_1__* entities ;
 size_t mapEntityNum ;
 int numBSPModels ;
 size_t numEntities ;
 int verbose ;
 int verboseEntities ;

void ProcessModels( void ){
 qboolean oldVerbose;
 entity_t *entity;



 oldVerbose = verbose;


 BeginBSPFile();


 CreateMapFogs();


 for ( mapEntityNum = 0; mapEntityNum < numEntities; mapEntityNum++ )
 {

  entity = &entities[ mapEntityNum ];
  if ( entity->brushes == ((void*)0) && entity->patches == ((void*)0) ) {
   continue;
  }


  Sys_FPrintf( SYS_VRB, "############### model %i ###############\n", numBSPModels );
  if ( mapEntityNum == 0 ) {
   ProcessWorldModel();
  }
  else{
   ProcessSubModel();
  }


  verbose = verboseEntities;
 }


 verbose = oldVerbose;


 EmitFogs();
}
