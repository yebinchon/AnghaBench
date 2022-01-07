
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float* picoVec3_t ;


 unsigned int HASHTABLE_SIZE ;
 int HASH_XYZ_EPSILONSPACE_MULTIPLIER ;
 int _pico_scale_vec (float*,int ,float*) ;
 scalar_t__ floor (float) ;

unsigned int PicoVertexCoordGenerateHash( picoVec3_t xyz ){
 unsigned int hash = 0;


 hash += ~( *( (unsigned int*) &xyz[ 0 ] ) << 15 );
 hash ^= ( *( (unsigned int*) &xyz[ 0 ] ) >> 10 );
 hash += ( *( (unsigned int*) &xyz[ 1 ] ) << 3 );
 hash ^= ( *( (unsigned int*) &xyz[ 1 ] ) >> 6 );
 hash += ~( *( (unsigned int*) &xyz[ 2 ] ) << 11 );
 hash ^= ( *( (unsigned int*) &xyz[ 2 ] ) >> 16 );
 hash = hash % ( HASHTABLE_SIZE );
 return hash;
}
