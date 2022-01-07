
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* down; void* wasPressed; void* active; void* downtime; } ;
typedef TYPE_1__ kbutton_t ;


 char* Cmd_Argv (int) ;
 int Com_Printf (char*) ;
 void* atoi (char*) ;
 void* qtrue ;

void IN_KeyDown( kbutton_t *b ) {
 int k;
 char *c;

 c = Cmd_Argv(1);
 if ( c[0] ) {
  k = atoi(c);
 } else {
  k = -1;
 }

 if ( k == b->down[0] || k == b->down[1] ) {
  return;
 }

 if ( !b->down[0] ) {
  b->down[0] = k;
 } else if ( !b->down[1] ) {
  b->down[1] = k;
 } else {
  Com_Printf ("Three keys down for a button!\n");
  return;
 }

 if ( b->active ) {
  return;
 }


 c = Cmd_Argv(2);
 b->downtime = atoi(c);

 b->active = qtrue;
 b->wasPressed = qtrue;
}
