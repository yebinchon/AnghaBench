
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v ;
typedef int fileHandle_t ;


 int FS_Read (int*,int,int ) ;
 int LittleLong (int) ;

__attribute__((used)) static int FGetLittleLong( fileHandle_t f ) {
 int v;

 FS_Read( &v, sizeof(v), f );

 return LittleLong( v);
}
