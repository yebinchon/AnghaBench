
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int Error (char*,char*) ;
 int SYS_VRB ;
 int SYS_WRN ;
 int StripExtension (char*) ;
 int Sys_FPrintf (int ,char*,...) ;
 int Sys_Printf (char*,char*) ;
 char* bspEntData ;
 scalar_t__ bspEntDataSize ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int *,char*,char*) ;
 int source ;
 int strcat (char*,char*) ;
 int strcpy (char*,int ) ;

void ExportEntities( void ){
        char filename[ 1024 ];
        FILE *file;


        Sys_FPrintf( SYS_VRB, "--- ExportEntities ---\n" );


        strcpy( filename, source );
        StripExtension( filename );
        strcat( filename, ".ent" );


        if ( bspEntDataSize == 0 ) {
   Sys_FPrintf( SYS_WRN, "WARNING: No BSP entity data. aborting...\n" );
   return;
        }


        Sys_Printf( "Writing %s\n", filename );
        Sys_FPrintf( SYS_VRB, "(%d bytes)\n", bspEntDataSize );
        file = fopen( filename, "w" );

        if ( file == ((void*)0) ) {
                Error( "Unable to open %s for writing", filename );
        }

        fprintf( file, "%s\n", bspEntData );
        fclose( file );
}
