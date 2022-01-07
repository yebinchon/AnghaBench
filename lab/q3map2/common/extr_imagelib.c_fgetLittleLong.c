
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int byte ;
typedef int FILE ;


 int fgetc (int *) ;

int fgetLittleLong( FILE *f ){
 byte b1, b2, b3, b4;

 b1 = fgetc( f );
 b2 = fgetc( f );
 b3 = fgetc( f );
 b4 = fgetc( f );

 return b1 + ( b2 << 8 ) + ( b3 << 16 ) + ( b4 << 24 );
}
