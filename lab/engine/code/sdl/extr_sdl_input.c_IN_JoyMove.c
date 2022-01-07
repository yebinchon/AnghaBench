
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int qboolean ;
typedef int Uint8 ;
struct TYPE_6__ {float value; } ;
struct TYPE_5__ {scalar_t__ integer; } ;
struct TYPE_4__ {int* buttons; unsigned int oldhats; int* oldaaxes; unsigned int oldaxes; } ;
typedef int Sint16 ;


 int ARRAY_LEN (int*) ;
 int Com_QueueEvent (int ,int ,int,int,int ,int *) ;
 int IN_GamepadMove () ;
 int K_JOY1 ;
 int MAX_JOYSTICK_AXIS ;
 int SDL_JoystickGetAxis (int ,int) ;
 int SDL_JoystickGetBall (int ,int,int*,int*) ;
 scalar_t__ SDL_JoystickGetButton (int ,int) ;
 int SDL_JoystickGetHat (int ,int) ;
 int SDL_JoystickNumAxes (int ) ;
 int SDL_JoystickNumBalls (int ) ;
 int SDL_JoystickNumButtons (int ) ;
 int SDL_JoystickNumHats (int ) ;
 int SDL_JoystickUpdate () ;
 int SE_JOYSTICK_AXIS ;
 int SE_KEY ;
 int SE_MOUSE ;
 int abs (int) ;
 scalar_t__ gamepad ;
 int* hat_keys ;
 int in_eventTime ;
 TYPE_3__* in_joystickThreshold ;
 TYPE_2__* in_joystickUseAnalog ;
 int* joy_keys ;
 int qfalse ;
 int qtrue ;
 int stick ;
 TYPE_1__ stick_state ;

__attribute__((used)) static void IN_JoyMove( void )
{
 unsigned int axes = 0;
 unsigned int hats = 0;
 int total = 0;
 int i = 0;

 if (gamepad)
 {
  IN_GamepadMove();
  return;
 }

 if (!stick)
  return;

 SDL_JoystickUpdate();


 total = SDL_JoystickNumBalls(stick);
 if (total > 0)
 {
  int balldx = 0;
  int balldy = 0;
  for (i = 0; i < total; i++)
  {
   int dx = 0;
   int dy = 0;
   SDL_JoystickGetBall(stick, i, &dx, &dy);
   balldx += dx;
   balldy += dy;
  }
  if (balldx || balldy)
  {


   if (abs(balldx) > 1)
    balldx *= 2;
   if (abs(balldy) > 1)
    balldy *= 2;
   Com_QueueEvent( in_eventTime, SE_MOUSE, balldx, balldy, 0, ((void*)0) );
  }
 }


 total = SDL_JoystickNumButtons(stick);
 if (total > 0)
 {
  if (total > ARRAY_LEN(stick_state.buttons))
   total = ARRAY_LEN(stick_state.buttons);
  for (i = 0; i < total; i++)
  {
   qboolean pressed = (SDL_JoystickGetButton(stick, i) != 0);
   if (pressed != stick_state.buttons[i])
   {
    Com_QueueEvent( in_eventTime, SE_KEY, K_JOY1 + i, pressed, 0, ((void*)0) );
    stick_state.buttons[i] = pressed;
   }
  }
 }


 total = SDL_JoystickNumHats(stick);
 if (total > 0)
 {
  if (total > 4) total = 4;
  for (i = 0; i < total; i++)
  {
   ((Uint8 *)&hats)[i] = SDL_JoystickGetHat(stick, i);
  }
 }


 if (hats != stick_state.oldhats)
 {
  for( i = 0; i < 4; i++ ) {
   if( ((Uint8 *)&hats)[i] != ((Uint8 *)&stick_state.oldhats)[i] ) {

    switch( ((Uint8 *)&stick_state.oldhats)[i] ) {
     case 128:
      Com_QueueEvent( in_eventTime, SE_KEY, hat_keys[4*i + 0], qfalse, 0, ((void*)0) );
      break;
     case 131:
      Com_QueueEvent( in_eventTime, SE_KEY, hat_keys[4*i + 1], qfalse, 0, ((void*)0) );
      break;
     case 135:
      Com_QueueEvent( in_eventTime, SE_KEY, hat_keys[4*i + 2], qfalse, 0, ((void*)0) );
      break;
     case 134:
      Com_QueueEvent( in_eventTime, SE_KEY, hat_keys[4*i + 3], qfalse, 0, ((void*)0) );
      break;
     case 129:
      Com_QueueEvent( in_eventTime, SE_KEY, hat_keys[4*i + 0], qfalse, 0, ((void*)0) );
      Com_QueueEvent( in_eventTime, SE_KEY, hat_keys[4*i + 1], qfalse, 0, ((void*)0) );
      break;
     case 130:
      Com_QueueEvent( in_eventTime, SE_KEY, hat_keys[4*i + 2], qfalse, 0, ((void*)0) );
      Com_QueueEvent( in_eventTime, SE_KEY, hat_keys[4*i + 1], qfalse, 0, ((void*)0) );
      break;
     case 132:
      Com_QueueEvent( in_eventTime, SE_KEY, hat_keys[4*i + 0], qfalse, 0, ((void*)0) );
      Com_QueueEvent( in_eventTime, SE_KEY, hat_keys[4*i + 3], qfalse, 0, ((void*)0) );
      break;
     case 133:
      Com_QueueEvent( in_eventTime, SE_KEY, hat_keys[4*i + 2], qfalse, 0, ((void*)0) );
      Com_QueueEvent( in_eventTime, SE_KEY, hat_keys[4*i + 3], qfalse, 0, ((void*)0) );
      break;
     default:
      break;
    }

    switch( ((Uint8 *)&hats)[i] ) {
     case 128:
      Com_QueueEvent( in_eventTime, SE_KEY, hat_keys[4*i + 0], qtrue, 0, ((void*)0) );
      break;
     case 131:
      Com_QueueEvent( in_eventTime, SE_KEY, hat_keys[4*i + 1], qtrue, 0, ((void*)0) );
      break;
     case 135:
      Com_QueueEvent( in_eventTime, SE_KEY, hat_keys[4*i + 2], qtrue, 0, ((void*)0) );
      break;
     case 134:
      Com_QueueEvent( in_eventTime, SE_KEY, hat_keys[4*i + 3], qtrue, 0, ((void*)0) );
      break;
     case 129:
      Com_QueueEvent( in_eventTime, SE_KEY, hat_keys[4*i + 0], qtrue, 0, ((void*)0) );
      Com_QueueEvent( in_eventTime, SE_KEY, hat_keys[4*i + 1], qtrue, 0, ((void*)0) );
      break;
     case 130:
      Com_QueueEvent( in_eventTime, SE_KEY, hat_keys[4*i + 2], qtrue, 0, ((void*)0) );
      Com_QueueEvent( in_eventTime, SE_KEY, hat_keys[4*i + 1], qtrue, 0, ((void*)0) );
      break;
     case 132:
      Com_QueueEvent( in_eventTime, SE_KEY, hat_keys[4*i + 0], qtrue, 0, ((void*)0) );
      Com_QueueEvent( in_eventTime, SE_KEY, hat_keys[4*i + 3], qtrue, 0, ((void*)0) );
      break;
     case 133:
      Com_QueueEvent( in_eventTime, SE_KEY, hat_keys[4*i + 2], qtrue, 0, ((void*)0) );
      Com_QueueEvent( in_eventTime, SE_KEY, hat_keys[4*i + 3], qtrue, 0, ((void*)0) );
      break;
     default:
      break;
    }
   }
  }
 }


 stick_state.oldhats = hats;


 total = SDL_JoystickNumAxes(stick);
 if (total > 0)
 {
  if (in_joystickUseAnalog->integer)
  {
   if (total > MAX_JOYSTICK_AXIS) total = MAX_JOYSTICK_AXIS;
   for (i = 0; i < total; i++)
   {
    Sint16 axis = SDL_JoystickGetAxis(stick, i);
    float f = ( (float) abs(axis) ) / 32767.0f;

    if( f < in_joystickThreshold->value ) axis = 0;

    if ( axis != stick_state.oldaaxes[i] )
    {
     Com_QueueEvent( in_eventTime, SE_JOYSTICK_AXIS, i, axis, 0, ((void*)0) );
     stick_state.oldaaxes[i] = axis;
    }
   }
  }
  else
  {
   if (total > 16) total = 16;
   for (i = 0; i < total; i++)
   {
    Sint16 axis = SDL_JoystickGetAxis(stick, i);
    float f = ( (float) axis ) / 32767.0f;
    if( f < -in_joystickThreshold->value ) {
     axes |= ( 1 << ( i * 2 ) );
    } else if( f > in_joystickThreshold->value ) {
     axes |= ( 1 << ( ( i * 2 ) + 1 ) );
    }
   }
  }
 }


 if (axes != stick_state.oldaxes)
 {
  for( i = 0; i < 16; i++ ) {
   if( ( axes & ( 1 << i ) ) && !( stick_state.oldaxes & ( 1 << i ) ) ) {
    Com_QueueEvent( in_eventTime, SE_KEY, joy_keys[i], qtrue, 0, ((void*)0) );
   }

   if( !( axes & ( 1 << i ) ) && ( stick_state.oldaxes & ( 1 << i ) ) ) {
    Com_QueueEvent( in_eventTime, SE_KEY, joy_keys[i], qfalse, 0, ((void*)0) );
   }
  }
 }


 stick_state.oldaxes = axes;
}
