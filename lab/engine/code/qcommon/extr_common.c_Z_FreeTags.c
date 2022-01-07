
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int tag; struct TYPE_5__* next; } ;
struct TYPE_6__ {TYPE_1__* rover; TYPE_1__ blocklist; } ;
typedef TYPE_2__ memzone_t ;


 int TAG_SMALL ;
 int Z_Free (void*) ;
 TYPE_2__* mainzone ;
 TYPE_2__* smallzone ;

void Z_FreeTags( int tag ) {
 memzone_t *zone;

 if ( tag == TAG_SMALL ) {
  zone = smallzone;
 }
 else {
  zone = mainzone;
 }


 zone->rover = zone->blocklist.next;
 do {
  if ( zone->rover->tag == tag ) {
   Z_Free( (void *)(zone->rover + 1) );
   continue;
  }
  zone->rover = zone->rover->next;
 } while ( zone->rover != &zone->blocklist );
}
