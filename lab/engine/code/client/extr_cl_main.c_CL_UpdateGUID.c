
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fileHandle_t ;


 char* Com_MD5File (int ,int,char const*,int) ;
 int Cvar_Set (char*,char*) ;
 int FS_FCloseFile (int ) ;
 int FS_SV_FOpenFileRead (int ,int *) ;
 int QKEY_FILE ;
 int QKEY_SIZE ;

__attribute__((used)) static void CL_UpdateGUID( const char *prefix, int prefix_len )
{
 fileHandle_t f;
 int len;

 len = FS_SV_FOpenFileRead( QKEY_FILE, &f );
 FS_FCloseFile( f );

 if( len != QKEY_SIZE )
  Cvar_Set( "cl_guid", "" );
 else
  Cvar_Set( "cl_guid", Com_MD5File( QKEY_FILE, QKEY_SIZE,
   prefix, prefix_len ) );
}
