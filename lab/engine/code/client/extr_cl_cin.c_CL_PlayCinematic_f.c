
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ status; int * buf; } ;
struct TYPE_3__ {scalar_t__ state; } ;


 scalar_t__ CA_CINEMATIC ;
 scalar_t__ CIN_PlayCinematic (char*,int ,int ,int ,int ,int) ;
 int CIN_hold ;
 int CIN_loop ;
 int CIN_system ;
 scalar_t__ CL_handle ;
 char* Cmd_Argv (int) ;
 int Com_DPrintf (char*) ;
 scalar_t__ FMV_PLAY ;
 scalar_t__ Q_stricmp (char*,char*) ;
 int SCREEN_HEIGHT ;
 int SCREEN_WIDTH ;
 int SCR_RunCinematic () ;
 int SCR_StopCinematic () ;
 int S_StopAllSounds () ;
 TYPE_2__* cinTable ;
 TYPE_1__ clc ;
 size_t currentHandle ;

void CL_PlayCinematic_f(void) {
 char *arg, *s;
 int bits = CIN_system;

 Com_DPrintf("CL_PlayCinematic_f\n");
 if (clc.state == CA_CINEMATIC) {
  SCR_StopCinematic();
 }

 arg = Cmd_Argv( 1 );
 s = Cmd_Argv(2);

 if ((s && s[0] == '1') || Q_stricmp(arg,"demoend.roq")==0 || Q_stricmp(arg,"end.roq")==0) {
  bits |= CIN_hold;
 }
 if (s && s[0] == '2') {
  bits |= CIN_loop;
 }

 S_StopAllSounds ();

 CL_handle = CIN_PlayCinematic( arg, 0, 0, SCREEN_WIDTH, SCREEN_HEIGHT, bits );
 if (CL_handle >= 0) {
  do {
   SCR_RunCinematic();
  } while (cinTable[currentHandle].buf == ((void*)0) && cinTable[currentHandle].status == FMV_PLAY);
 }
}
