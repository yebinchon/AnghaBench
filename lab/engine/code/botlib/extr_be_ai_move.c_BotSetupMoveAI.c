
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BLERR_NOERROR ;
 int BotSetBrushModelTypes () ;
 void* LibVar (char*,char*) ;
 void* cmd_grappleoff ;
 void* cmd_grappleon ;
 void* entitytypemissile ;
 void* offhandgrapple ;
 void* sv_gravity ;
 void* sv_maxbarrier ;
 void* sv_maxstep ;
 void* weapindex_bfg10k ;
 void* weapindex_grapple ;
 void* weapindex_rocketlauncher ;

int BotSetupMoveAI(void)
{
 BotSetBrushModelTypes();
 sv_maxstep = LibVar("sv_step", "18");
 sv_maxbarrier = LibVar("sv_maxbarrier", "32");
 sv_gravity = LibVar("sv_gravity", "800");
 weapindex_rocketlauncher = LibVar("weapindex_rocketlauncher", "5");
 weapindex_bfg10k = LibVar("weapindex_bfg10k", "9");
 weapindex_grapple = LibVar("weapindex_grapple", "10");
 entitytypemissile = LibVar("entitytypemissile", "3");
 offhandgrapple = LibVar("offhandgrapple", "0");
 cmd_grappleon = LibVar("cmd_grappleon", "grappleon");
 cmd_grappleoff = LibVar("cmd_grappleoff", "grappleoff");
 return BLERR_NOERROR;
}
