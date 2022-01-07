
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int snapFlags; scalar_t__ serverTime; } ;
struct TYPE_12__ {TYPE_1__ snap; scalar_t__ oldServerTime; scalar_t__ serverTimeDelta; } ;
struct TYPE_11__ {scalar_t__* string; } ;
struct TYPE_10__ {scalar_t__ integer; } ;
struct TYPE_9__ {float* voipGain; int voipTargets; void* voipMuteAll; scalar_t__ voipCodecInitialized; void** voipIgnore; int * opusDecoder; int opusEncoder; scalar_t__ timeDemoBaseTime; int state; } ;
struct TYPE_8__ {scalar_t__ realtime; } ;


 int CA_ACTIVE ;
 int CLIENT_WINDOW_TITLE ;
 int CL_Voip_f ;
 int Cbuf_AddText (scalar_t__*) ;
 int Cmd_AddCommand (char*,int ) ;
 int Com_DPrintf (char*,int,...) ;
 int Com_Memset (int ,int ,int) ;
 int Com_Printf (char*,char*) ;
 int Cvar_Set (char*,char*) ;
 int MAX_CLIENTS ;
 int OPUS_APPLICATION_VOIP ;
 int SNAPFLAG_NOT_ACTIVE ;
 TYPE_6__ cl ;
 TYPE_5__* cl_activeAction ;
 TYPE_4__* cl_useMumble ;
 TYPE_3__ clc ;
 TYPE_2__ cls ;
 int mumble_islinked () ;
 int mumble_link (int ) ;
 int opus_decoder_create (int,int,int*) ;
 int opus_encoder_create (int,int,int ,int*) ;
 void* qfalse ;
 scalar_t__ qtrue ;

void CL_FirstSnapshot( void ) {

 if ( cl.snap.snapFlags & SNAPFLAG_NOT_ACTIVE ) {
  return;
 }
 clc.state = CA_ACTIVE;


 cl.serverTimeDelta = cl.snap.serverTime - cls.realtime;
 cl.oldServerTime = cl.snap.serverTime;

 clc.timeDemoBaseTime = cl.snap.serverTime;





 if ( cl_activeAction->string[0] ) {
  Cbuf_AddText( cl_activeAction->string );
  Cvar_Set( "activeAction", "" );
 }
}
