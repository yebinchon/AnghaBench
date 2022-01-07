
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int* picoColor_t ;
struct TYPE_4__ {scalar_t__ shader; } ;
typedef TYPE_1__ T3dsLoaderPers ;


 int GetByte (TYPE_1__*) ;
 int PicoSetShaderDiffuseColor (scalar_t__,int*) ;
 int printf (char*,int,int,int) ;

__attribute__((used)) static int GetDiffuseColor( T3dsLoaderPers *pers ){




 picoColor_t color;

 color[0] = GetByte( pers );
 color[1] = GetByte( pers );
 color[2] = GetByte( pers );
 color[3] = 255;


 if ( pers->shader ) {
  PicoSetShaderDiffuseColor( pers->shader,color );
 }




 return 1;
}
