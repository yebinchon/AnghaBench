
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int planenum; } ;
typedef TYPE_1__ side_t ;
typedef int qboolean ;
struct TYPE_5__ {int numsides; int brushNum; int entityNum; TYPE_1__* sides; } ;
typedef TYPE_2__ brush_t ;


 int qfalse ;
 int qtrue ;
 int xml_Select (char*,int ,int ,int ) ;

qboolean RemoveDuplicateBrushPlanes( brush_t *b ){
 int i, j, k;
 side_t *sides;

 sides = b->sides;

 for ( i = 1 ; i < b->numsides ; i++ ) {


  if ( sides[i].planenum == -1 ) {
   xml_Select( "degenerate plane", b->entityNum, b->brushNum, qfalse );

   for ( k = i + 1 ; k < b->numsides ; k++ ) {
    sides[k - 1] = sides[k];
   }
   b->numsides--;
   i--;
   continue;
  }


  for ( j = 0 ; j < i ; j++ ) {
   if ( sides[i].planenum == sides[j].planenum ) {
    xml_Select( "duplicate plane", b->entityNum, b->brushNum, qfalse );

    for ( k = i + 1 ; k < b->numsides ; k++ ) {
     sides[k - 1] = sides[k];
    }
    b->numsides--;
    i--;
    break;
   }

   if ( sides[i].planenum == ( sides[j].planenum ^ 1 ) ) {

    xml_Select( "mirrored plane", b->entityNum, b->brushNum, qfalse );
    return qfalse;
   }
  }
 }
 return qtrue;
}
