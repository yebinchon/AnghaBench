
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int numsides; TYPE_1__* sides; } ;
typedef TYPE_2__ brush_t ;
struct TYPE_6__ {int * winding; } ;


 int FreeWinding (int *) ;
 int SYS_VRB ;
 int Sys_FPrintf (int ,char*) ;
 int free (TYPE_2__*) ;
 int memset (TYPE_2__*,int,int) ;
 int numActiveBrushes ;
 int numthreads ;

void FreeBrush( brush_t *b ){
 int i;



 if ( *( (unsigned int*) b ) == 0xFEFEFEFE ) {
  Sys_FPrintf( SYS_VRB, "WARNING: Attempt to free an already freed brush!\n" );
  return;
 }


 for ( i = 0; i < b->numsides; i++ )
  if ( b->sides[i].winding != ((void*)0) ) {
   FreeWinding( b->sides[ i ].winding );
  }


 memset( b, 0xFE, sizeof( *b ) + sizeof( *b->sides ) * b->numsides );
 *( (unsigned int*) b ) = 0xFEFEFEFE;


 free( b );
 if ( numthreads == 1 ) {
  numActiveBrushes--;
 }
}
