
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v ;
typedef int uLong ;
typedef int FILE ;


 int UNZ_OK ;
 int __LittleShort (short) ;
 int fread (short*,int,int,int *) ;
 int fread_ql (short*,int,int,int *) ;
 int unz_GAME_QL ;

__attribute__((used)) static int unzlocal_getShort (FILE* fin, uLong *pX)
{
 short v;

 if (unz_GAME_QL == 1) {
  fread_ql( &v, sizeof(v), 1, fin );
 } else {
  fread( &v, sizeof(v), 1, fin );
 }
 *pX = __LittleShort( v);
 return UNZ_OK;
}
