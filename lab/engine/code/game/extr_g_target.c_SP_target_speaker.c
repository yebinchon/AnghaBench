
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int trBase; } ;
struct TYPE_9__ {int frame; int clientNum; TYPE_2__ pos; int origin; int loopSound; int eventParm; int eType; } ;
struct TYPE_7__ {int svFlags; } ;
struct TYPE_10__ {int wait; int random; int spawnflags; TYPE_3__ s; TYPE_1__ r; int use; int noise_index; } ;
typedef TYPE_4__ gentity_t ;
typedef int buffer ;


 int Com_sprintf (char*,int,char*,char*) ;
 int ET_SPEAKER ;
 int G_Error (char*,int ) ;
 int G_SoundIndex (char*) ;
 int G_SpawnFloat (char*,char*,int*) ;
 int G_SpawnString (char*,char*,char**) ;
 int MAX_QPATH ;
 int Q_strncpyz (char*,char*,int) ;
 int SVF_BROADCAST ;
 int Use_Target_Speaker ;
 int VectorCopy (int ,int ) ;
 int strstr (char*,char*) ;
 int trap_LinkEntity (TYPE_4__*) ;
 int vtos (int ) ;

void SP_target_speaker( gentity_t *ent ) {
 char buffer[MAX_QPATH];
 char *s;

 G_SpawnFloat( "wait", "0", &ent->wait );
 G_SpawnFloat( "random", "0", &ent->random );

 if ( !G_SpawnString( "noise", "NOSOUND", &s ) ) {
  G_Error( "target_speaker without a noise key at %s", vtos( ent->s.origin ) );
 }



 if ( s[0] == '*' ) {
  ent->spawnflags |= 8;
 }

 if (!strstr( s, ".wav" )) {
  Com_sprintf (buffer, sizeof(buffer), "%s.wav", s );
 } else {
  Q_strncpyz( buffer, s, sizeof(buffer) );
 }
 ent->noise_index = G_SoundIndex(buffer);


 ent->s.eType = ET_SPEAKER;
 ent->s.eventParm = ent->noise_index;
 ent->s.frame = ent->wait * 10;
 ent->s.clientNum = ent->random * 10;



 if ( ent->spawnflags & 1 ) {
  ent->s.loopSound = ent->noise_index;
 }

 ent->use = Use_Target_Speaker;

 if (ent->spawnflags & 4) {
  ent->r.svFlags |= SVF_BROADCAST;
 }

 VectorCopy( ent->s.origin, ent->s.pos.trBase );



 trap_LinkEntity( ent );
}
