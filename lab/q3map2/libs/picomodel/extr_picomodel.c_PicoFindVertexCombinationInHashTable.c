
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__* xyz; scalar_t__* normal; scalar_t__* st; scalar_t__ color; } ;
struct TYPE_6__ {TYPE_1__ vcd; struct TYPE_6__* next; } ;
typedef TYPE_2__ picoVertexCombinationHash_t ;
typedef scalar_t__* picoVec3_t ;
typedef int * picoColor_t ;


 scalar_t__ HASH_NORMAL_EPSILON ;
 scalar_t__ HASH_ST_EPSILON ;
 scalar_t__ HASH_XYZ_EPSILON ;
 unsigned int PicoVertexCoordGenerateHash (scalar_t__*) ;
 scalar_t__ fabs (scalar_t__) ;

picoVertexCombinationHash_t *PicoFindVertexCombinationInHashTable( picoVertexCombinationHash_t **hashTable, picoVec3_t xyz, picoVec3_t normal, picoVec3_t st, picoColor_t color ){
 unsigned int hash;
 picoVertexCombinationHash_t *vertexCombinationHash;


 if ( hashTable == ((void*)0) || xyz == ((void*)0) || normal == ((void*)0) || st == ((void*)0) || color == ((void*)0) ) {
  return ((void*)0);
 }

 hash = PicoVertexCoordGenerateHash( xyz );

 for ( vertexCombinationHash = hashTable[ hash ]; vertexCombinationHash; vertexCombinationHash = vertexCombinationHash->next )
 {


  if ( ( vertexCombinationHash->vcd.xyz[ 0 ] != xyz[ 0 ] || vertexCombinationHash->vcd.xyz[ 1 ] != xyz[ 1 ] || vertexCombinationHash->vcd.xyz[ 2 ] != xyz[ 2 ] ) ) {
   continue;
  }


  if ( ( vertexCombinationHash->vcd.normal[ 0 ] != normal[ 0 ] || vertexCombinationHash->vcd.normal[ 1 ] != normal[ 1 ] || vertexCombinationHash->vcd.normal[ 2 ] != normal[ 2 ] ) ) {
   continue;
  }


  if ( vertexCombinationHash->vcd.st[ 0 ] != st[ 0 ] || vertexCombinationHash->vcd.st[ 1 ] != st[ 1 ] ) {
   continue;
  }
  if ( *( (int*) vertexCombinationHash->vcd.color ) != *( (int*) color ) ) {
   continue;
  }


  return vertexCombinationHash;
 }

 return ((void*)0);
}
