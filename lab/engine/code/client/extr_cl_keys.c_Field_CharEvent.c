
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int* buffer; int cursor; int scroll; int widthInChars; } ;
typedef TYPE_1__ field_t ;


 int Field_Clear (TYPE_1__*) ;
 int Field_Paste (TYPE_1__*) ;
 int MAX_EDIT_LINE ;
 scalar_t__ key_overstrikeMode ;
 int memmove (int*,int*,int) ;
 int strlen (int*) ;

void Field_CharEvent( field_t *edit, int ch ) {
 int len;

 if ( ch == 'v' - 'a' + 1 ) {
  Field_Paste( edit );
  return;
 }

 if ( ch == 'c' - 'a' + 1 ) {
  Field_Clear( edit );
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
  edit->scroll = edit->cursor - edit->widthInChars;
  return;
 }




 if ( ch < 32 ) {
  return;
 }

 if ( key_overstrikeMode ) {

  if ( edit->cursor == MAX_EDIT_LINE - 2 )
   return;
  edit->buffer[edit->cursor] = ch;
  edit->cursor++;
 } else {

  if ( len == MAX_EDIT_LINE - 2 ) {
   return;
  }
  memmove( edit->buffer + edit->cursor + 1,
   edit->buffer + edit->cursor, len + 1 - edit->cursor );
  edit->buffer[edit->cursor] = ch;
  edit->cursor++;
 }


 if ( edit->cursor >= edit->widthInChars ) {
  edit->scroll++;
 }

 if ( edit->cursor == len + 1) {
  edit->buffer[edit->cursor] = 0;
 }
}
