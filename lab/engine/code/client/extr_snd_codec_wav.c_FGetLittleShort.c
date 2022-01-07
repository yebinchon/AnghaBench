
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v ;
typedef int fileHandle_t ;


 int FS_Read (short*,int,int ) ;
 short LittleShort (short) ;

__attribute__((used)) static short FGetLittleShort( fileHandle_t f ) {
 short v;

 FS_Read( &v, sizeof(v), f );

 return LittleShort( v);
}
