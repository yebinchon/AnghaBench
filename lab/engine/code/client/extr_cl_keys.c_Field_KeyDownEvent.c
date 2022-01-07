
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int cursor; int scroll; int widthInChars; int buffer; } ;
typedef TYPE_1__ field_t ;
struct TYPE_6__ {scalar_t__ down; } ;


 int Field_Paste (TYPE_1__*) ;




 int K_KP_INS ;


 size_t K_SHIFT ;
 int key_overstrikeMode ;
 TYPE_2__* keys ;
 int memmove (int ,int ,int) ;
 int strlen (int ) ;
 int tolower (int) ;

void Field_KeyDownEvent( field_t *edit, int key ) {
 int len;


 if ( ( ( key == 130 ) || ( key == K_KP_INS ) ) && keys[K_SHIFT].down ) {
  Field_Paste( edit );
  return;
 }

 key = tolower( key );
 len = strlen( edit->buffer );

 switch ( key ) {
  case 133:
   if ( edit->cursor < len ) {
    memmove( edit->buffer + edit->cursor,
     edit->buffer + edit->cursor + 1, len - edit->cursor );
   }
   break;

  case 128:
   if ( edit->cursor < len ) {
    edit->cursor++;
   }
   break;

  case 129:
   if ( edit->cursor > 0 ) {
    edit->cursor--;
   }
   break;

  case 131:
   edit->cursor = 0;
   break;

  case 132:
   edit->cursor = len;
   break;

  case 130:
   key_overstrikeMode = !key_overstrikeMode;
   break;

  default:
   break;
 }


 if ( edit->cursor < edit->scroll ) {
  edit->scroll = edit->cursor;
 } else if ( edit->cursor >= edit->scroll + edit->widthInChars && edit->cursor <= len ) {
  edit->scroll = edit->cursor - edit->widthInChars + 1;
 }
}
