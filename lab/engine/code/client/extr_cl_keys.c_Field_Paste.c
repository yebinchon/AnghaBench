
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int field_t ;


 int Field_CharEvent (int *,char) ;
 char* Sys_GetClipboardData () ;
 int Z_Free (char*) ;
 int strlen (char*) ;

void Field_Paste( field_t *edit ) {
 char *cbd;
 int pasteLen, i;

 cbd = Sys_GetClipboardData();

 if ( !cbd ) {
  return;
 }


 pasteLen = strlen( cbd );
 for ( i = 0 ; i < pasteLen ; i++ ) {
  Field_CharEvent( edit, cbd[i] );
 }

 Z_Free( cbd );
}
