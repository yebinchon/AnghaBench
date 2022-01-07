
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int remoteAddress; } ;
struct TYPE_9__ {char* userinfo; int rate; int snapshotMsec; int hasVoip; TYPE_1__ netchan; scalar_t__ compat; scalar_t__ lastSnapshotTime; int name; } ;
typedef TYPE_2__ client_t ;
struct TYPE_12__ {int integer; } ;
struct TYPE_11__ {int integer; } ;
struct TYPE_10__ {int integer; } ;


 int Info_SetValueForKey (char*,char*,char*) ;
 char* Info_ValueForKey (char*,char*) ;
 int MAX_INFO_STRING ;
 scalar_t__ NET_AdrToString (int ) ;
 scalar_t__ NET_IsLocalAddress (int ) ;
 int Q_stricmp (char*,char*) ;
 int Q_strncpyz (int ,char*,int) ;
 int SV_DropClient (TYPE_2__*,char*) ;
 scalar_t__ Sys_IsLANAddress (int ) ;
 int atoi (char*) ;
 TYPE_5__* com_dedicated ;
 int qfalse ;
 int strlen (char*) ;
 TYPE_4__* sv_fps ;
 TYPE_3__* sv_lanForceRate ;

void SV_UserinfoChanged( client_t *cl ) {
 char *val;
 char *ip;
 int i;
 int len;


 Q_strncpyz( cl->name, Info_ValueForKey (cl->userinfo, "name"), sizeof(cl->name) );





 if ( Sys_IsLANAddress( cl->netchan.remoteAddress ) && com_dedicated->integer != 2 && sv_lanForceRate->integer == 1) {
  cl->rate = 0;
 } else {
  val = Info_ValueForKey (cl->userinfo, "rate");
  if (strlen(val)) {
   i = atoi(val);
   cl->rate = i;
   if (cl->rate < 1000) {
    cl->rate = 1000;
   } else if (cl->rate > 90000) {
    cl->rate = 90000;
   }
  } else {
   cl->rate = 3000;
  }
 }
 val = Info_ValueForKey (cl->userinfo, "handicap");
 if (strlen(val)) {
  i = atoi(val);
  if (i<=0 || i>100 || strlen(val) > 4) {
   Info_SetValueForKey( cl->userinfo, "handicap", "100" );
  }
 }


 val = Info_ValueForKey (cl->userinfo, "snaps");

 if(strlen(val))
 {
  i = atoi(val);

  if(i < 1)
   i = 1;
  else if(i > sv_fps->integer)
   i = sv_fps->integer;

  i = 1000 / i;
 }
 else
  i = 50;

 if(i != cl->snapshotMsec)
 {

  cl->lastSnapshotTime = 0;
  cl->snapshotMsec = i;
 }
 if( NET_IsLocalAddress(cl->netchan.remoteAddress) )
  ip = "localhost";
 else
  ip = (char*)NET_AdrToString( cl->netchan.remoteAddress );

 val = Info_ValueForKey( cl->userinfo, "ip" );
 if( val[0] )
  len = strlen( ip ) - strlen( val ) + strlen( cl->userinfo );
 else
  len = strlen( ip ) + 4 + strlen( cl->userinfo );

 if( len >= MAX_INFO_STRING )
  SV_DropClient( cl, "userinfo string length exceeded" );
 else
  Info_SetValueForKey( cl->userinfo, "ip", ip );

}
