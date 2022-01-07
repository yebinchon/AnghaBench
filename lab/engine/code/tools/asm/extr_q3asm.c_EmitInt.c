
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int imageUsed; int* image; } ;
typedef TYPE_1__ segment_t ;


 int Error (char*) ;
 int MAX_IMAGE ;

__attribute__((used)) static void EmitInt( segment_t *seg, int v ) {
 if ( seg->imageUsed >= MAX_IMAGE - 4) {
  Error( "MAX_IMAGE" );
 }
 seg->image[ seg->imageUsed ] = v & 255;
 seg->image[ seg->imageUsed + 1 ] = ( v >> 8 ) & 255;
 seg->image[ seg->imageUsed + 2 ] = ( v >> 16 ) & 255;
 seg->image[ seg->imageUsed + 3 ] = ( v >> 24 ) & 255;
 seg->imageUsed += 4;
}
