
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {void* warmup; } ;
struct TYPE_3__ {scalar_t__ gametype; char redflag; char blueflag; char flagStatus; void* levelStartTime; void* scores2; void* scores1; } ;


 char* CG_ConfigString (int ) ;
 int CS_FLAGSTATUS ;
 int CS_LEVEL_START_TIME ;
 int CS_SCORES1 ;
 int CS_SCORES2 ;
 int CS_WARMUP ;
 scalar_t__ GT_1FCTF ;
 scalar_t__ GT_CTF ;
 void* atoi (char*) ;
 TYPE_2__ cg ;
 TYPE_1__ cgs ;

void CG_SetConfigValues( void ) {
 const char *s;

 cgs.scores1 = atoi( CG_ConfigString( CS_SCORES1 ) );
 cgs.scores2 = atoi( CG_ConfigString( CS_SCORES2 ) );
 cgs.levelStartTime = atoi( CG_ConfigString( CS_LEVEL_START_TIME ) );
 if( cgs.gametype == GT_CTF ) {
  s = CG_ConfigString( CS_FLAGSTATUS );
  cgs.redflag = s[0] - '0';
  cgs.blueflag = s[1] - '0';
 }






 cg.warmup = atoi( CG_ConfigString( CS_WARMUP ) );
}
