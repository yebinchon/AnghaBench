
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float** tcMod_t ;



void TCModTranslate( tcMod_t mod, float s, float t ){
 mod[ 0 ][ 2 ] += s;
 mod[ 1 ][ 2 ] += t;
}
