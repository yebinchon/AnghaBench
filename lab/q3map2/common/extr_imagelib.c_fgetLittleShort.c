
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int byte ;
typedef int FILE ;


 int fgetc (int *) ;

int fgetLittleShort( FILE *f ){
 byte b1, b2;

 b1 = fgetc( f );
 b2 = fgetc( f );

 return (short)( b1 + b2 * 256 );
}
