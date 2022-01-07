
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ qboolean ;
struct TYPE_4__ {int widthInChars; char* buffer; int scroll; int cursor; } ;
typedef TYPE_1__ field_t ;
struct TYPE_5__ {int realtime; } ;


 int Com_Error (int ,char*) ;
 int Com_Memcpy (char*,char*,int) ;
 int ERR_DROP ;
 int MAX_STRING_CHARS ;
 int SCR_DrawBigString (int,int,char*,double,scalar_t__) ;
 int SCR_DrawSmallChar (int,int,int) ;
 int SCR_DrawSmallStringExt (int,int,char*,float*,scalar_t__,scalar_t__) ;
 int SMALLCHAR_WIDTH ;
 TYPE_2__ cls ;
 scalar_t__ key_overstrikeMode ;
 scalar_t__ qfalse ;
 int strlen (char*) ;

void Field_VariableSizeDraw( field_t *edit, int x, int y, int width, int size, qboolean showCursor,
  qboolean noColorEscape ) {
 int len;
 int drawLen;
 int prestep;
 int cursorChar;
 char str[MAX_STRING_CHARS];
 int i;

 drawLen = edit->widthInChars - 1;
 len = strlen( edit->buffer );


 if ( len <= drawLen ) {
  prestep = 0;
 } else {
  if ( edit->scroll + drawLen > len ) {
   edit->scroll = len - drawLen;
   if ( edit->scroll < 0 ) {
    edit->scroll = 0;
   }
  }
  prestep = edit->scroll;
 }

 if ( prestep + drawLen > len ) {
  drawLen = len - prestep;
 }


 if ( drawLen >= MAX_STRING_CHARS ) {
  Com_Error( ERR_DROP, "drawLen >= MAX_STRING_CHARS" );
 }

 Com_Memcpy( str, edit->buffer + prestep, drawLen );
 str[ drawLen ] = 0;


 if ( size == SMALLCHAR_WIDTH ) {
  float color[4];

  color[0] = color[1] = color[2] = color[3] = 1.0;
  SCR_DrawSmallStringExt( x, y, str, color, qfalse, noColorEscape );
 } else {

  SCR_DrawBigString( x, y, str, 1.0, noColorEscape );
 }


 if ( showCursor ) {
  if ( (int)( cls.realtime >> 8 ) & 1 ) {
   return;
  }

  if ( key_overstrikeMode ) {
   cursorChar = 11;
  } else {
   cursorChar = 10;
  }

  i = drawLen - strlen( str );

  if ( size == SMALLCHAR_WIDTH ) {
   SCR_DrawSmallChar( x + ( edit->cursor - prestep - i ) * size, y, cursorChar );
  } else {
   str[0] = cursorChar;
   str[1] = 0;
   SCR_DrawBigString( x + ( edit->cursor - prestep - i ) * size, y, str, 1.0, qfalse );

  }
 }
}
