
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int type; int ip6; int ip; } ;
typedef TYPE_2__ netadr_t ;
struct TYPE_10__ {int _6; int _4; } ;
struct TYPE_12__ {int type; int lastTime; size_t hash; struct TYPE_12__* prev; struct TYPE_12__* next; scalar_t__ burst; TYPE_1__ ipv; } ;
typedef TYPE_3__ leakyBucket_t ;


 int Com_Memcpy (int ,int ,int) ;
 int Com_Memset (TYPE_3__*,int ,int) ;
 int MAX_BUCKETS ;
 int NA_BAD ;


 long SVC_HashForAddress (TYPE_2__) ;
 int Sys_Milliseconds () ;
 TYPE_3__** bucketHashes ;
 TYPE_3__* buckets ;
 int memcmp (int ,int ,int) ;

__attribute__((used)) static leakyBucket_t *SVC_BucketForAddress( netadr_t address, int burst, int period ) {
 leakyBucket_t *bucket = ((void*)0);
 int i;
 long hash = SVC_HashForAddress( address );
 int now = Sys_Milliseconds();

 for ( bucket = bucketHashes[ hash ]; bucket; bucket = bucket->next ) {
  switch ( bucket->type ) {
   case 129:
    if ( memcmp( bucket->ipv._4, address.ip, 4 ) == 0 ) {
     return bucket;
    }
    break;

   case 128:
    if ( memcmp( bucket->ipv._6, address.ip6, 16 ) == 0 ) {
     return bucket;
    }
    break;

   default:
    break;
  }
 }

 for ( i = 0; i < MAX_BUCKETS; i++ ) {
  int interval;

  bucket = &buckets[ i ];
  interval = now - bucket->lastTime;


  if ( bucket->lastTime > 0 && ( interval > ( burst * period ) ||
     interval < 0 ) ) {
   if ( bucket->prev != ((void*)0) ) {
    bucket->prev->next = bucket->next;
   } else {
    bucketHashes[ bucket->hash ] = bucket->next;
   }

   if ( bucket->next != ((void*)0) ) {
    bucket->next->prev = bucket->prev;
   }

   Com_Memset( bucket, 0, sizeof( leakyBucket_t ) );
  }

  if ( bucket->type == NA_BAD ) {
   bucket->type = address.type;
   switch ( address.type ) {
    case 129: Com_Memcpy( bucket->ipv._4, address.ip, 4 ); break;
    case 128: Com_Memcpy( bucket->ipv._6, address.ip6, 16 ); break;
    default: break;
   }

   bucket->lastTime = now;
   bucket->burst = 0;
   bucket->hash = hash;


   bucket->next = bucketHashes[ hash ];
   if ( bucketHashes[ hash ] != ((void*)0) ) {
    bucketHashes[ hash ]->prev = bucket;
   }

   bucket->prev = ((void*)0);
   bucketHashes[ hash ] = bucket;

   return bucket;
  }
 }


 return ((void*)0);
}
