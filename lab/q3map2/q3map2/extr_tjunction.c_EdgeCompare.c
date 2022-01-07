
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {float length; } ;
typedef TYPE_1__ originalEdge_t ;



int EdgeCompare( const void *elem1, const void *elem2 ) {
 float d1, d2;

 d1 = ( (originalEdge_t *)elem1 )->length;
 d2 = ( (originalEdge_t *)elem2 )->length;

 if ( d1 < d2 ) {
  return -1;
 }
 if ( d2 > d1 ) {
  return 1;
 }
 return 0;
}
