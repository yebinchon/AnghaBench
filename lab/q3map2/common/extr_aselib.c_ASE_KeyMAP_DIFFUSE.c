
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {size_t numMaterials; TYPE_1__* materials; } ;
struct TYPE_3__ {char* name; } ;


 int ASE_GetToken (int ) ;
 int SYS_WRN ;
 int Sys_FPrintf (int ,char*,char*) ;
 int Sys_Printf (char*,char*) ;
 TYPE_2__ ase ;
 char* gamedir ;
 char* gl_filename ;
 int qfalse ;
 char* s_token ;
 int sprintf (char*,char*,char*) ;
 int strcat (char*,char*) ;
 scalar_t__* strchr (char*,char) ;
 int strcmp (char const*,char*) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 char* strstr (char*,char*) ;

__attribute__((used)) static void ASE_KeyMAP_DIFFUSE( const char *token ){
 char bitmap[1024];
 char filename[1024];
 int i = 0;

 strcpy( filename, gl_filename );

 if ( !strcmp( token, "*BITMAP" ) ) {
  ASE_GetToken( qfalse );




  strcpy( bitmap, s_token + 1 );
  if ( strchr( bitmap, '"' ) ) {
   *strchr( bitmap, '"' ) = 0;
  }


  while ( bitmap[i] )
  {
   if ( bitmap[i] == '\\' ) {
    bitmap[i] = '/';
   }
   i++;
  }


  for ( i = strlen( filename ); i > 0; i-- )
  {
   if ( filename[i] == '/' ) {
    filename[i] = '\0';
    break;
   }
  }


  if ( bitmap[0] == '.' && bitmap[1] == '.' && bitmap[2] == '/' ) {
   while ( bitmap[0] == '.' && bitmap[1] == '.' && bitmap[2] == '/' )
   {

    for ( i = strlen( filename ); i > 0; i-- )
    {
     if ( filename[i] == '/' ) {
      filename[i] = '\0';
      break;
     }
    }
    strcpy( bitmap, &bitmap[3] );
   }
   strcat( filename, "/" );
   strcat( filename, bitmap );
   strcpy( bitmap, filename );
  }

  if ( strstr( bitmap, gamedir ) ) {
   strcpy( ase.materials[ase.numMaterials].name, strstr( bitmap, gamedir ) + strlen( gamedir ) );
   Sys_Printf( "material name: \'%s\'\n", strstr( bitmap, gamedir ) + strlen( gamedir ) );
  }
  else
  {
   sprintf( ase.materials[ase.numMaterials].name, "(not converted: '%s')", bitmap );
   Sys_FPrintf( SYS_WRN, "WARNING: illegal material name '%s'\n", bitmap );
  }
 }
 else
 {
 }
}
