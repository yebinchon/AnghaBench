
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fileHandle_t ;
typedef int buff ;


 int Com_Printf (char*,...) ;
 int Com_RandomBytes (unsigned char*,int) ;
 int FS_FCloseFile (int ) ;
 int FS_SV_FOpenFileRead (int ,int *) ;
 int FS_SV_FOpenFileWrite (int ) ;
 int FS_Write (unsigned char*,int,int ) ;
 int QKEY_FILE ;
 int QKEY_SIZE ;

__attribute__((used)) static void CL_GenerateQKey(void)
{
 int len = 0;
 unsigned char buff[ QKEY_SIZE ];
 fileHandle_t f;

 len = FS_SV_FOpenFileRead( QKEY_FILE, &f );
 FS_FCloseFile( f );
 if( len == QKEY_SIZE ) {
  Com_Printf( "QKEY found.\n" );
  return;
 }
 else {
  if( len > 0 ) {
   Com_Printf( "QKEY file size != %d, regenerating\n",
    QKEY_SIZE );
  }

  Com_Printf( "QKEY building random string\n" );
  Com_RandomBytes( buff, sizeof(buff) );

  f = FS_SV_FOpenFileWrite( QKEY_FILE );
  if( !f ) {
   Com_Printf( "QKEY could not open %s for write\n",
    QKEY_FILE );
   return;
  }
  FS_Write( buff, sizeof(buff), f );
  FS_FCloseFile( f );
  Com_Printf( "QKEY generated\n" );
 }
}
