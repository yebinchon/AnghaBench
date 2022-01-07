
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int color; int st; int normal; int xyz; } ;
struct TYPE_7__ {struct TYPE_7__* next; int * data; int index; TYPE_1__ vcd; } ;
typedef TYPE_2__ picoVertexCombinationHash_t ;
typedef int * picoVec3_t ;
typedef int picoIndex_t ;
typedef int * picoColor_t ;


 unsigned int PicoVertexCoordGenerateHash (int *) ;
 TYPE_2__* _pico_alloc (int) ;
 int _pico_copy_color (int *,int ) ;
 int _pico_copy_vec (int *,int ) ;
 int _pico_copy_vec2 (int *,int ) ;

picoVertexCombinationHash_t *PicoAddVertexCombinationToHashTable( picoVertexCombinationHash_t **hashTable, picoVec3_t xyz, picoVec3_t normal, picoVec3_t st, picoColor_t color, picoIndex_t index ){
 unsigned int hash;
 picoVertexCombinationHash_t *vertexCombinationHash;


 if ( hashTable == ((void*)0) || xyz == ((void*)0) || normal == ((void*)0) || st == ((void*)0) || color == ((void*)0) ) {
  return ((void*)0);
 }

 vertexCombinationHash = _pico_alloc( sizeof( picoVertexCombinationHash_t ) );

 if ( !vertexCombinationHash ) {
  return ((void*)0);
 }

 hash = PicoVertexCoordGenerateHash( xyz );

 _pico_copy_vec( xyz, vertexCombinationHash->vcd.xyz );
 _pico_copy_vec( normal, vertexCombinationHash->vcd.normal );
 _pico_copy_vec2( st, vertexCombinationHash->vcd.st );
 _pico_copy_color( color, vertexCombinationHash->vcd.color );
 vertexCombinationHash->index = index;
 vertexCombinationHash->data = ((void*)0);
 vertexCombinationHash->next = hashTable[ hash ];
 hashTable[ hash ] = vertexCombinationHash;

 return vertexCombinationHash;
}
