
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float** tcMod_t ;



void TCModIdentity( tcMod_t mod ){
 mod[ 0 ][ 0 ] = 1.0f; mod[ 0 ][ 1 ] = 0.0f; mod[ 0 ][ 2 ] = 0.0f;
 mod[ 1 ][ 0 ] = 0.0f; mod[ 1 ][ 1 ] = 1.0f; mod[ 1 ][ 2 ] = 0.0f;
 mod[ 2 ][ 0 ] = 0.0f; mod[ 2 ][ 1 ] = 0.0f; mod[ 2 ][ 2 ] = 1.0f;
}
