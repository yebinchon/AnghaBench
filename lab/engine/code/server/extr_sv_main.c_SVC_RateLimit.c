
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_4__ {int lastTime; int burst; } ;
typedef TYPE_1__ leakyBucket_t ;
struct TYPE_5__ {scalar_t__ integer; } ;


 int Sys_Milliseconds () ;
 int qfalse ;
 int qtrue ;
 TYPE_2__* sv_rateLimit ;

qboolean SVC_RateLimit( leakyBucket_t *bucket, int burst, int period ) {
 if ( bucket != ((void*)0) ) {
  if (sv_rateLimit->integer){
   int now = Sys_Milliseconds();
   int interval = now - bucket->lastTime;
   int expired = interval / period;
   int expiredRemainder = interval % period;

   if ( expired > bucket->burst || interval < 0 ) {
    bucket->burst = 0;
    bucket->lastTime = now;
   } else {
    bucket->burst -= expired;
    bucket->lastTime = now - expiredRemainder;
   }

   if ( bucket->burst < burst ) {
    bucket->burst++;
    return qfalse;
   }
  } else {
   return qfalse;
  }
 }

 return qtrue;
}
