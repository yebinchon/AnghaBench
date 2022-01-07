
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef float* vec3_t ;
struct TYPE_6__ {int serverTime; int* angles; float forwardmove; float rightmove; float upmove; int weapon; int buttons; } ;
typedef TYPE_1__ usercmd_t ;
struct TYPE_7__ {int actionflags; float* viewangles; int* dir; int speed; int weapon; } ;
typedef TYPE_2__ bot_input_t ;


 int ACTION_AFFIRMATIVE ;
 int ACTION_ATTACK ;
 int ACTION_CROUCH ;
 int ACTION_DELAYEDJUMP ;
 int ACTION_FOLLOWME ;
 int ACTION_GESTURE ;
 int ACTION_GETFLAG ;
 int ACTION_GUARDBASE ;
 int ACTION_JUMP ;
 int ACTION_MOVEBACK ;
 int ACTION_MOVEFORWARD ;
 int ACTION_MOVELEFT ;
 int ACTION_MOVERIGHT ;
 int ACTION_NEGATIVE ;
 int ACTION_PATROL ;
 int ACTION_RESPAWN ;
 int ACTION_TALK ;
 int ACTION_USE ;
 int ACTION_WALK ;
 void* ANGLE2SHORT (float) ;
 int AngleVectors (float*,float*,float*,int *) ;
 int BUTTON_AFFIRMATIVE ;
 int BUTTON_ATTACK ;
 int BUTTON_FOLLOWME ;
 int BUTTON_GESTURE ;
 int BUTTON_GETFLAG ;
 int BUTTON_GUARDBASE ;
 int BUTTON_NEGATIVE ;
 int BUTTON_PATROL ;
 int BUTTON_TALK ;
 int BUTTON_USE_HOLDABLE ;
 int BUTTON_WALKING ;
 float DotProduct (float*,int*) ;
 size_t PITCH ;
 size_t ROLL ;
 size_t YAW ;
 float fabs (float) ;
 int memset (TYPE_1__*,int ,int) ;

void BotInputToUserCommand(bot_input_t *bi, usercmd_t *ucmd, int delta_angles[3], int time) {
 vec3_t angles, forward, right;
 short temp;
 int j;
 float f, r, u, m;


 memset(ucmd, 0, sizeof(usercmd_t));

 ucmd->serverTime = time;

 if (bi->actionflags & ACTION_DELAYEDJUMP) {
  bi->actionflags |= ACTION_JUMP;
  bi->actionflags &= ~ACTION_DELAYEDJUMP;
 }

 if (bi->actionflags & ACTION_RESPAWN) ucmd->buttons = BUTTON_ATTACK;
 if (bi->actionflags & ACTION_ATTACK) ucmd->buttons |= BUTTON_ATTACK;
 if (bi->actionflags & ACTION_TALK) ucmd->buttons |= BUTTON_TALK;
 if (bi->actionflags & ACTION_GESTURE) ucmd->buttons |= BUTTON_GESTURE;
 if (bi->actionflags & ACTION_USE) ucmd->buttons |= BUTTON_USE_HOLDABLE;
 if (bi->actionflags & ACTION_WALK) ucmd->buttons |= BUTTON_WALKING;
 if (bi->actionflags & ACTION_AFFIRMATIVE) ucmd->buttons |= BUTTON_AFFIRMATIVE;
 if (bi->actionflags & ACTION_NEGATIVE) ucmd->buttons |= BUTTON_NEGATIVE;
 if (bi->actionflags & ACTION_GETFLAG) ucmd->buttons |= BUTTON_GETFLAG;
 if (bi->actionflags & ACTION_GUARDBASE) ucmd->buttons |= BUTTON_GUARDBASE;
 if (bi->actionflags & ACTION_PATROL) ucmd->buttons |= BUTTON_PATROL;
 if (bi->actionflags & ACTION_FOLLOWME) ucmd->buttons |= BUTTON_FOLLOWME;

 ucmd->weapon = bi->weapon;


 ucmd->angles[PITCH] = ANGLE2SHORT(bi->viewangles[PITCH]);
 ucmd->angles[YAW] = ANGLE2SHORT(bi->viewangles[YAW]);
 ucmd->angles[ROLL] = ANGLE2SHORT(bi->viewangles[ROLL]);

 for (j = 0; j < 3; j++) {
  temp = ucmd->angles[j] - delta_angles[j];







  ucmd->angles[j] = temp;
 }



 if (bi->dir[2]) angles[PITCH] = bi->viewangles[PITCH];
 else angles[PITCH] = 0;
 angles[YAW] = bi->viewangles[YAW];
 angles[ROLL] = 0;
 AngleVectors(angles, forward, right, ((void*)0));

 bi->speed = bi->speed * 127 / 400;

 f = DotProduct(forward, bi->dir);
 r = DotProduct(right, bi->dir);
 u = fabs(forward[2]) * bi->dir[2];
 m = fabs(f);

 if (fabs(r) > m) {
  m = fabs(r);
 }

 if (fabs(u) > m) {
  m = fabs(u);
 }

 if (m > 0) {
  f *= bi->speed / m;
  r *= bi->speed / m;
  u *= bi->speed / m;
 }

 ucmd->forwardmove = f;
 ucmd->rightmove = r;
 ucmd->upmove = u;

 if (bi->actionflags & ACTION_MOVEFORWARD) ucmd->forwardmove = 127;
 if (bi->actionflags & ACTION_MOVEBACK) ucmd->forwardmove = -127;
 if (bi->actionflags & ACTION_MOVELEFT) ucmd->rightmove = -127;
 if (bi->actionflags & ACTION_MOVERIGHT) ucmd->rightmove = 127;

 if (bi->actionflags & ACTION_JUMP) ucmd->upmove = 127;

 if (bi->actionflags & ACTION_CROUCH) ucmd->upmove = -127;
}
