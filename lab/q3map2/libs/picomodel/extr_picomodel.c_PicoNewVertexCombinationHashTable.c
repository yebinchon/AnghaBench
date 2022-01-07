
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int picoVertexCombinationHash_t ;


 int HASHTABLE_SIZE ;
 int ** _pico_alloc (int) ;
 int memset (int **,int ,int) ;

picoVertexCombinationHash_t **PicoNewVertexCombinationHashTable( void ){
 picoVertexCombinationHash_t **hashTable = _pico_alloc( HASHTABLE_SIZE * sizeof( picoVertexCombinationHash_t* ) );

 memset( hashTable, 0, HASHTABLE_SIZE * sizeof( picoVertexCombinationHash_t* ) );

 return hashTable;
}
