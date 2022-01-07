
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int warmupCount; int warmup; } ;
struct TYPE_4__ {int countPrepareSound; int countPrepareTeamSound; } ;
struct TYPE_5__ {scalar_t__ gametype; TYPE_1__ media; } ;


 char* CG_ConfigString (int ) ;
 int CHAN_ANNOUNCER ;
 int CS_WARMUP ;
 scalar_t__ GT_CTF ;
 scalar_t__ GT_HARVESTER ;
 int atoi (char const*) ;
 TYPE_3__ cg ;
 TYPE_2__ cgs ;
 int trap_S_StartLocalSound (int ,int ) ;

__attribute__((used)) static void CG_ParseWarmup( void ) {
 const char *info;
 int warmup;

 info = CG_ConfigString( CS_WARMUP );

 warmup = atoi( info );
 cg.warmupCount = -1;

 if ( warmup == 0 && cg.warmup ) {

 } else if ( warmup > 0 && cg.warmup <= 0 ) {





  {
   trap_S_StartLocalSound( cgs.media.countPrepareSound, CHAN_ANNOUNCER );
  }
 }

 cg.warmup = warmup;
}
