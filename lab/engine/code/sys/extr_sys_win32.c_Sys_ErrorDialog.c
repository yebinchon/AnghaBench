
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buffer ;
typedef int HGLOBAL ;


 int CF_TEXT ;
 unsigned int CON_LogRead (char*,int) ;
 scalar_t__ CON_LogSize () ;
 int CloseClipboard () ;
 int Com_Memcpy (char*,char*,unsigned int) ;
 scalar_t__ DR_YES ;
 int DT_YES_NO ;
 scalar_t__ EmptyClipboard () ;
 int GMEM_DDESHARE ;
 int GMEM_MOVEABLE ;
 int GlobalAlloc (int,scalar_t__) ;
 scalar_t__ GlobalLock (int ) ;
 int GlobalUnlock (char*) ;
 scalar_t__ OpenClipboard (int *) ;
 int SetClipboardData (int ,int ) ;
 scalar_t__ Sys_Dialog (int ,int ,char*) ;
 int va (char*,char const*) ;

void Sys_ErrorDialog( const char *error )
{
 if( Sys_Dialog( DT_YES_NO, va( "%s. Copy console log to clipboard?", error ),
   "Error" ) == DR_YES )
 {
  HGLOBAL memoryHandle;
  char *clipMemory;

  memoryHandle = GlobalAlloc( GMEM_MOVEABLE|GMEM_DDESHARE, CON_LogSize( ) + 1 );
  clipMemory = (char *)GlobalLock( memoryHandle );

  if( clipMemory )
  {
   char *p = clipMemory;
   char buffer[ 1024 ];
   unsigned int size;

   while( ( size = CON_LogRead( buffer, sizeof( buffer ) ) ) > 0 )
   {
    Com_Memcpy( p, buffer, size );
    p += size;
   }

   *p = '\0';

   if( OpenClipboard( ((void*)0) ) && EmptyClipboard( ) )
    SetClipboardData( CF_TEXT, memoryHandle );

   GlobalUnlock( clipMemory );
   CloseClipboard( );
  }
 }
}
