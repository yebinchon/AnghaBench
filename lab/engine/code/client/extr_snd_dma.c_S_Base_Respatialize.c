
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int const vec3_t ;
struct TYPE_4__ {size_t entnum; int rightvol; int leftvol; int master_vol; int const origin; scalar_t__ fixed_origin; scalar_t__ fullVolume; int thesfx; } ;
typedef TYPE_1__ channel_t ;
struct TYPE_5__ {int const origin; } ;


 int MAX_CHANNELS ;
 int S_AddLoopSounds () ;
 int S_SpatializeOrigin (int const,int ,int *,int *) ;
 int VectorCopy (int const,int const) ;
 int const* listener_axis ;
 int listener_number ;
 int const listener_origin ;
 TYPE_3__* loopSounds ;
 TYPE_1__* s_channels ;
 scalar_t__ s_soundMuted ;
 int s_soundStarted ;

void S_Base_Respatialize( int entityNum, const vec3_t head, vec3_t axis[3], int inwater ) {
 int i;
 channel_t *ch;
 vec3_t origin;

 if ( !s_soundStarted || s_soundMuted ) {
  return;
 }

 listener_number = entityNum;
 VectorCopy(head, listener_origin);
 VectorCopy(axis[0], listener_axis[0]);
 VectorCopy(axis[1], listener_axis[1]);
 VectorCopy(axis[2], listener_axis[2]);


 ch = s_channels;
 for ( i = 0 ; i < MAX_CHANNELS ; i++, ch++ ) {
  if ( !ch->thesfx ) {
   continue;
  }

  if (ch->fullVolume) {
   ch->leftvol = ch->master_vol;
   ch->rightvol = ch->master_vol;
  } else {
   if (ch->fixed_origin) {
    VectorCopy( ch->origin, origin );
   } else {
    VectorCopy( loopSounds[ ch->entnum ].origin, origin );
   }

   S_SpatializeOrigin (origin, ch->master_vol, &ch->leftvol, &ch->rightvol);
  }
 }


 S_AddLoopSounds ();
}
