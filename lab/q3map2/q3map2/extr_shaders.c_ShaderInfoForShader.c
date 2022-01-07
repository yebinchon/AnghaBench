
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {char* shader; scalar_t__ finished; } ;
typedef TYPE_1__ shaderInfo_t ;


 TYPE_1__* AllocShaderInfo () ;
 int FinishShader (TYPE_1__*) ;
 int LoadShaderImages (TYPE_1__*) ;
 int MAX_QPATH ;
 int Q_stricmp (char*,char*) ;
 int SYS_WRN ;
 int StripExtension (char*) ;
 int Sys_FPrintf (int ,char*) ;
 int numShaderInfo ;
 scalar_t__ qfalse ;
 TYPE_1__* shaderInfo ;
 int strcpy (char*,char const*) ;

shaderInfo_t *ShaderInfoForShader( const char *shaderName ){
 int i;
 shaderInfo_t *si;
 char shader[ MAX_QPATH ];



 if ( shaderName == ((void*)0) || shaderName[ 0 ] == '\0' ) {
  Sys_FPrintf( SYS_WRN, "WARNING: Null or empty shader name\n" );
  shaderName = "missing";
 }


 strcpy( shader, shaderName );
 StripExtension( shader );


 for ( i = 0; i < numShaderInfo; i++ )
 {
  si = &shaderInfo[ i ];
  if ( !Q_stricmp( shader, si->shader ) ) {

   if ( si->finished == qfalse ) {
    LoadShaderImages( si );
    FinishShader( si );
   }


   return si;
  }
 }


 si = AllocShaderInfo();
 strcpy( si->shader, shader );
 LoadShaderImages( si );
 FinishShader( si );


 return si;
}
