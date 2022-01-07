
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int* buffer; int cursor; int scroll; int widthInChars; int maxchars; } ;
typedef TYPE_1__ mfield_t ;


 int MAX_EDIT_LINE ;
 int MField_Clear (TYPE_1__*) ;
 int MField_Paste (TYPE_1__*) ;
 int memmove (int*,int*,int) ;
 int strlen (int*) ;
 scalar_t__ trap_Key_GetOverstrikeMode () ;

void MField_CharEvent( mfield_t *edit, int ch ) {
 int len;

 if ( ch == 'v' - 'a' + 1 ) {
  MField_Paste( edit );
  return;
 }

 if ( ch == 'c' - 'a' + 1 ) {
  MField_Clear( edit );
  return;
 }

 len = strlen( edit->buffer );

 if ( ch == 'h' - 'a' + 1 ) {
  if ( edit->cursor > 0 ) {
   memmove( edit->buffer + edit->cursor - 1,
    edit->buffer + edit->cursor, len + 1 - edit->cursor );
   edit->cursor--;
   if ( edit->cursor < edit->scroll )
   {
    edit->scroll--;
   }
  }
  return;
 }

 if ( ch == 'a' - 'a' + 1 ) {
  edit->cursor = 0;
  edit->scroll = 0;
  return;
 }

 if ( ch == 'e' - 'a' + 1 ) {
  edit->cursor = len;
  edit->scroll = edit->cursor - edit->widthInChars + 1;
  if (edit->scroll < 0)
   edit->scroll = 0;
  return;
 }




 if ( ch < 32 ) {
  return;
 }

 if ( trap_Key_GetOverstrikeMode() ) {
  if ((edit->cursor == MAX_EDIT_LINE - 1) || (edit->maxchars && edit->cursor >= edit->maxchars))
   return;
 } else {

  if (( len == MAX_EDIT_LINE - 1 ) || (edit->maxchars && len >= edit->maxchars))
   return;
  memmove( edit->buffer + edit->cursor + 1, edit->buffer + edit->cursor, len + 1 - edit->cursor );
 }

 edit->buffer[edit->cursor] = ch;
 if (!edit->maxchars || edit->cursor < edit->maxchars-1)
  edit->cursor++;

 if ( edit->cursor >= edit->widthInChars )
 {
  edit->scroll++;
 }

 if ( edit->cursor == len + 1) {
  edit->buffer[edit->cursor] = 0;
 }
}
