
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int qboolean ;
typedef int keyNum_t ;
struct TYPE_6__ {scalar_t__ integer; } ;
struct TYPE_5__ {scalar_t__ scancode; int sym; } ;
typedef TYPE_1__ SDL_Keysym ;


 scalar_t__ IN_IsConsoleKey (int,int ) ;
 int IN_PrintKey (TYPE_1__*,int,int ) ;
 int K_ALT ;
 int K_BACKSPACE ;
 int K_CAPSLOCK ;
 int K_COMMAND ;
 int K_CONSOLE ;
 int K_CTRL ;
 int K_DEL ;
 int K_DOWNARROW ;
 int K_END ;
 int K_ENTER ;
 int K_ESCAPE ;
 int K_F1 ;
 int K_F10 ;
 int K_F11 ;
 int K_F12 ;
 int K_F13 ;
 int K_F14 ;
 int K_F15 ;
 int K_F2 ;
 int K_F3 ;
 int K_F4 ;
 int K_F5 ;
 int K_F6 ;
 int K_F7 ;
 int K_F8 ;
 int K_F9 ;
 int K_HELP ;
 int K_HOME ;
 int K_INS ;
 int K_KP_5 ;
 int K_KP_DEL ;
 int K_KP_DOWNARROW ;
 int K_KP_END ;
 int K_KP_ENTER ;
 int K_KP_HOME ;
 int K_KP_INS ;
 int K_KP_LEFTARROW ;
 int K_KP_MINUS ;
 int K_KP_NUMLOCK ;
 int K_KP_PGDN ;
 int K_KP_PGUP ;
 int K_KP_PLUS ;
 int K_KP_RIGHTARROW ;
 int K_KP_SLASH ;
 int K_KP_STAR ;
 int K_KP_UPARROW ;
 int K_LEFTARROW ;
 int K_MENU ;
 int K_MODE ;
 int K_PAUSE ;
 int K_PGDN ;
 int K_PGUP ;
 int K_POWER ;
 int K_PRINT ;
 int K_RIGHTARROW ;
 int K_SCROLLOCK ;
 int K_SHIFT ;
 int K_SUPER ;
 int K_SYSREQ ;
 int K_TAB ;
 int K_UNDO ;
 int K_UPARROW ;
 int K_WORLD_0 ;
 int SDLK_SCANCODE_MASK ;

 int SDLK_SPACE ;




 scalar_t__ SDL_SCANCODE_0 ;
 scalar_t__ SDL_SCANCODE_1 ;
 TYPE_2__* in_keyboardDebug ;

__attribute__((used)) static keyNum_t IN_TranslateSDLToQ3Key( SDL_Keysym *keysym, qboolean down )
{
 keyNum_t key = 0;

 if( keysym->scancode >= SDL_SCANCODE_1 && keysym->scancode <= SDL_SCANCODE_0 )
 {




  if( keysym->scancode == SDL_SCANCODE_0 )
   key = '0';
  else
   key = '1' + keysym->scancode - SDL_SCANCODE_1;
 }
 else if( keysym->sym >= SDLK_SPACE && keysym->sym < 189 )
 {

  key = (int)keysym->sym;
 }
 else
 {
  switch( keysym->sym )
  {
   case 142: key = K_PGUP; break;
   case 158: key = K_KP_PGUP; break;
   case 143: key = K_PGDN; break;
   case 164: key = K_KP_PGDN; break;
   case 160: key = K_KP_HOME; break;
   case 169: key = K_HOME; break;
   case 166: key = K_KP_END; break;
   case 187: key = K_END; break;
   case 163: key = K_KP_LEFTARROW; break;
   case 149: key = K_LEFTARROW; break;
   case 161: key = K_KP_RIGHTARROW; break;
   case 134: key = K_RIGHTARROW; break;
   case 165: key = K_KP_DOWNARROW; break;
   case 188: key = K_DOWNARROW; break;
   case 159: key = K_KP_UPARROW; break;
   case 128: key = K_UPARROW; break;
   case 186: key = K_ESCAPE; break;
   case 156: key = K_KP_ENTER; break;
   case 136: key = K_ENTER; break;
   case 130: key = K_TAB; break;
   case 185: key = K_F1; break;
   case 178: key = K_F2; break;
   case 177: key = K_F3; break;
   case 176: key = K_F4; break;
   case 175: key = K_F5; break;
   case 174: key = K_F6; break;
   case 173: key = K_F7; break;
   case 172: key = K_F8; break;
   case 171: key = K_F9; break;
   case 184: key = K_F10; break;
   case 183: key = K_F11; break;
   case 182: key = K_F12; break;
   case 181: key = K_F13; break;
   case 180: key = K_F14; break;
   case 179: key = K_F15; break;

   case 191: key = K_BACKSPACE; break;
   case 153: key = K_KP_DEL; break;
   case 189: key = K_DEL; break;
   case 141: key = K_PAUSE; break;

   case 147:
   case 133: key = K_SHIFT; break;

   case 150:
   case 137: key = K_CTRL; break;





   case 135:
   case 148: key = K_SUPER; break;


   case 138:
   case 151: key = K_ALT; break;

   case 162: key = K_KP_5; break;
   case 168: key = K_INS; break;
   case 167: key = K_KP_INS; break;
   case 154: key = K_KP_STAR; break;
   case 152: key = K_KP_PLUS; break;
   case 155: key = K_KP_MINUS; break;
   case 157: key = K_KP_SLASH; break;

   case 145: key = K_MODE; break;
   case 170: key = K_HELP; break;
   case 139: key = K_PRINT; break;
   case 131: key = K_SYSREQ; break;
   case 146: key = K_MENU; break;
   case 192: key = K_MENU; break;
   case 140: key = K_POWER; break;
   case 129: key = K_UNDO; break;
   case 132: key = K_SCROLLOCK; break;
   case 144: key = K_KP_NUMLOCK; break;
   case 190: key = K_CAPSLOCK; break;

   default:
    if( !( keysym->sym & SDLK_SCANCODE_MASK ) && keysym->scancode <= 95 )
    {





     key = K_WORLD_0 + (int)keysym->scancode;
    }
    break;
  }
 }

 if( in_keyboardDebug->integer )
  IN_PrintKey( keysym, key, down );

 if( IN_IsConsoleKey( key, 0 ) )
 {

  key = K_CONSOLE;
 }

 return key;
}
