
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ numMaterials; } ;


 int ASE_GetToken (int ) ;
 int ASE_KeyMATERIAL ;
 int ASE_ParseBracedBlock (int ) ;
 int Error (char*) ;
 scalar_t__ MAX_ASE_MATERIALS ;
 int VERBOSE (char*) ;
 TYPE_1__ ase ;
 scalar_t__ atoi (int ) ;
 int qfalse ;
 int s_token ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static void ASE_KeyMATERIAL_LIST( const char *token ){
 if ( !strcmp( token, "*MATERIAL_COUNT" ) ) {
  ASE_GetToken( qfalse );
  VERBOSE( ( "..num materials: %s\n", s_token ) );
  if ( atoi( s_token ) > MAX_ASE_MATERIALS ) {
   Error( "Too many materials!" );
  }
  ase.numMaterials = 0;
 }
 else if ( !strcmp( token, "*MATERIAL" ) ) {
  VERBOSE( ( "..material %d ", ase.numMaterials ) );
  ASE_ParseBracedBlock( ASE_KeyMATERIAL );
  ase.numMaterials++;
 }
}
