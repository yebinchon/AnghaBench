
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LittleLong (int) ;

void SwapBlock( int *block, int size ){
 int i;



 if ( block == ((void*)0) ) {
  return;
 }


 size >>= 2;
 for ( i = 0; i < size; i++ )
  block[ i ] = LittleLong( block[ i ] );
}
