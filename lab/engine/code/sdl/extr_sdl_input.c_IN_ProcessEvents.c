
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_9__ ;
typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_11__ ;
typedef struct TYPE_13__ TYPE_10__ ;


typedef char keyNum_t ;
struct TYPE_23__ {int down; } ;
struct TYPE_20__ {int data1; int data2; int event; } ;
struct TYPE_19__ {int y; } ;
struct TYPE_18__ {int const button; } ;
struct TYPE_17__ {int xrel; int yrel; } ;
struct TYPE_16__ {char* text; } ;
struct TYPE_15__ {int keysym; int repeat; } ;
struct TYPE_22__ {int type; TYPE_6__ window; TYPE_5__ wheel; TYPE_4__ button; TYPE_3__ motion; TYPE_2__ text; TYPE_1__ key; } ;
struct TYPE_21__ {int vidWidth; int vidHeight; int isFullscreen; } ;
struct TYPE_14__ {TYPE_7__ glconfig; } ;
struct TYPE_13__ {int integer; } ;
typedef TYPE_8__ SDL_Event ;


 int CTRL (char) ;
 int Cbuf_ExecuteText (int ,char*) ;
 int Com_DPrintf (char*,unsigned int) ;
 int Com_QueueEvent (int ,int ,int,int ,int ,int *) ;
 int Cvar_Set (char*,char*) ;
 int Cvar_SetValue (char*,int) ;
 int EXEC_NOW ;
 int IN_InitJoystick () ;
 int IN_IsConsoleKey (int ,int) ;
 char IN_TranslateSDLToQ3Key (int *,int ) ;
 int K_AUX1 ;
 char K_BACKSPACE ;
 char K_CONSOLE ;
 size_t K_CTRL ;
 int K_MOUSE1 ;
 int K_MOUSE2 ;
 int K_MOUSE3 ;
 int K_MOUSE4 ;
 int K_MOUSE5 ;
 int K_MWHEELDOWN ;
 int K_MWHEELUP ;
 int Key_GetCatcher () ;







 int SDL_INIT_VIDEO ;






 scalar_t__ SDL_PollEvent (TYPE_8__*) ;
 int SDL_WasInit (int ) ;
 int SE_CHAR ;
 int SE_KEY ;
 int SE_MOUSE ;
 int Sys_Milliseconds () ;
 TYPE_11__ cls ;
 int in_eventTime ;
 TYPE_10__* in_joystick ;
 TYPE_9__* keys ;
 int mouseActive ;
 int qfalse ;
 int qtrue ;
 int vidRestartTime ;

__attribute__((used)) static void IN_ProcessEvents( void )
{
 SDL_Event e;
 keyNum_t key = 0;
 static keyNum_t lastKeyDown = 0;

 if( !SDL_WasInit( SDL_INIT_VIDEO ) )
   return;

 while( SDL_PollEvent( &e ) )
 {
  switch( e.type )
  {
   case 142:
    if ( e.key.repeat && Key_GetCatcher( ) == 0 )
     break;

    if( ( key = IN_TranslateSDLToQ3Key( &e.key.keysym, qtrue ) ) )
     Com_QueueEvent( in_eventTime, SE_KEY, key, qtrue, 0, ((void*)0) );

    if( key == K_BACKSPACE )
     Com_QueueEvent( in_eventTime, SE_CHAR, CTRL('h'), 0, 0, ((void*)0) );
    else if( keys[K_CTRL].down && key >= 'a' && key <= 'z' )
     Com_QueueEvent( in_eventTime, SE_CHAR, CTRL(key), 0, 0, ((void*)0) );

    lastKeyDown = key;
    break;

   case 141:
    if( ( key = IN_TranslateSDLToQ3Key( &e.key.keysym, qfalse ) ) )
     Com_QueueEvent( in_eventTime, SE_KEY, key, qfalse, 0, ((void*)0) );

    lastKeyDown = 0;
    break;

   case 135:
    if( lastKeyDown != K_CONSOLE )
    {
     char *c = e.text.text;


     while( *c )
     {
      int utf32 = 0;

      if( ( *c & 0x80 ) == 0 )
       utf32 = *c++;
      else if( ( *c & 0xE0 ) == 0xC0 )
      {
       utf32 |= ( *c++ & 0x1F ) << 6;
       utf32 |= ( *c++ & 0x3F );
      }
      else if( ( *c & 0xF0 ) == 0xE0 )
      {
       utf32 |= ( *c++ & 0x0F ) << 12;
       utf32 |= ( *c++ & 0x3F ) << 6;
       utf32 |= ( *c++ & 0x3F );
      }
      else if( ( *c & 0xF8 ) == 0xF0 )
      {
       utf32 |= ( *c++ & 0x07 ) << 18;
       utf32 |= ( *c++ & 0x3F ) << 12;
       utf32 |= ( *c++ & 0x3F ) << 6;
       utf32 |= ( *c++ & 0x3F );
      }
      else
      {
       Com_DPrintf( "Unrecognised UTF-8 lead byte: 0x%x\n", (unsigned int)*c );
       c++;
      }

      if( utf32 != 0 )
      {
       if( IN_IsConsoleKey( 0, utf32 ) )
       {
        Com_QueueEvent( in_eventTime, SE_KEY, K_CONSOLE, qtrue, 0, ((void*)0) );
        Com_QueueEvent( in_eventTime, SE_KEY, K_CONSOLE, qfalse, 0, ((void*)0) );
       }
       else
        Com_QueueEvent( in_eventTime, SE_CHAR, utf32, 0, 0, ((void*)0) );
      }
          }
        }
    break;

   case 138:
    if( mouseActive )
    {
     if( !e.motion.xrel && !e.motion.yrel )
      break;
     Com_QueueEvent( in_eventTime, SE_MOUSE, e.motion.xrel, e.motion.yrel, 0, ((void*)0) );
    }
    break;

   case 140:
   case 139:
    {
     int b;
     switch( e.button.button )
     {
      case 149: b = K_MOUSE1; break;
      case 148: b = K_MOUSE3; break;
      case 147: b = K_MOUSE2; break;
      case 146: b = K_MOUSE4; break;
      case 145: b = K_MOUSE5; break;
      default: b = K_AUX1 + ( e.button.button - 145 + 1 ) % 16; break;
     }
     Com_QueueEvent( in_eventTime, SE_KEY, b,
      ( e.type == 140 ? qtrue : qfalse ), 0, ((void*)0) );
    }
    break;

   case 137:
    if( e.wheel.y > 0 )
    {
     Com_QueueEvent( in_eventTime, SE_KEY, K_MWHEELUP, qtrue, 0, ((void*)0) );
     Com_QueueEvent( in_eventTime, SE_KEY, K_MWHEELUP, qfalse, 0, ((void*)0) );
    }
    else if( e.wheel.y < 0 )
    {
     Com_QueueEvent( in_eventTime, SE_KEY, K_MWHEELDOWN, qtrue, 0, ((void*)0) );
     Com_QueueEvent( in_eventTime, SE_KEY, K_MWHEELDOWN, qfalse, 0, ((void*)0) );
    }
    break;

   case 144:
   case 143:
    if (in_joystick->integer)
     IN_InitJoystick();
    break;

   case 136:
    Cbuf_ExecuteText(EXEC_NOW, "quit Closed window\n");
    break;

   case 134:
    switch( e.window.event )
    {
     case 129:
      {
       int width, height;

       width = e.window.data1;
       height = e.window.data2;


       if( cls.glconfig.isFullscreen )
       {
        break;
       }


       if( cls.glconfig.vidWidth == width && cls.glconfig.vidHeight == height )
       {
        break;
       }

       Cvar_SetValue( "r_customwidth", width );
       Cvar_SetValue( "r_customheight", height );
       Cvar_Set( "r_mode", "-1" );




       vidRestartTime = Sys_Milliseconds( ) + 1000;
      }
      break;

     case 130: Cvar_SetValue( "com_minimized", 1 ); break;
     case 128:
     case 131: Cvar_SetValue( "com_minimized", 0 ); break;
     case 132: Cvar_SetValue( "com_unfocused", 1 ); break;
     case 133: Cvar_SetValue( "com_unfocused", 0 ); break;
    }
    break;

   default:
    break;
  }
 }
}
