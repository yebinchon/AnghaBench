
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int checksumFeed; } ;


 int Cvar_Set2 (char*,int ,int ) ;
 int FS_ConditionalRestart (int ,scalar_t__) ;
 int cl_oldGame ;
 scalar_t__ cl_oldGameSet ;
 TYPE_1__ clc ;
 scalar_t__ qfalse ;
 int qtrue ;

__attribute__((used)) static void CL_OldGame(void)
{
 if(cl_oldGameSet)
 {

  cl_oldGameSet = qfalse;
  Cvar_Set2("fs_game", cl_oldGame, qtrue);
  FS_ConditionalRestart(clc.checksumFeed, qfalse);
 }
}
