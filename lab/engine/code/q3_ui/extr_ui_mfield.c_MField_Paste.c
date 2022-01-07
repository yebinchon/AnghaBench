
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mfield_t ;


 int MField_CharEvent (int *,char) ;
 int strlen (char*) ;
 int trap_GetClipboardData (char*,int) ;

void MField_Paste( mfield_t *edit ) {
 char pasteBuffer[64];
 int pasteLen, i;

 trap_GetClipboardData( pasteBuffer, 64 );


 pasteLen = strlen( pasteBuffer );
 for ( i = 0 ; i < pasteLen ; i++ ) {
  MField_CharEvent( edit, pasteBuffer[i] );
 }
}
