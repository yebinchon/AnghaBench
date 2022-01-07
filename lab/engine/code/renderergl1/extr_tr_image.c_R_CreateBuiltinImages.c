
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int data ;
typedef int byte ;
struct TYPE_2__ {int identityLightByte; void** scratchImage; void* identityLightImage; void* whiteImage; } ;


 int Com_Memset (int***,int,int) ;
 int DEFAULT_SIZE ;
 int IMGFLAG_CLAMPTOEDGE ;
 int IMGFLAG_NONE ;
 int IMGFLAG_PICMIP ;
 int IMGTYPE_COLORALPHA ;
 int R_CreateDefaultImage () ;
 int R_CreateDlightImage () ;
 int R_CreateFogImage () ;
 void* R_CreateImage (char*,int*,int,int,int ,int,int ) ;
 TYPE_1__ tr ;

void R_CreateBuiltinImages( void ) {
 int x,y;
 byte data[DEFAULT_SIZE][DEFAULT_SIZE][4];

 R_CreateDefaultImage();


 Com_Memset( data, 255, sizeof( data ) );
 tr.whiteImage = R_CreateImage("*white", (byte *)data, 8, 8, IMGTYPE_COLORALPHA, IMGFLAG_NONE, 0);



 for (x=0 ; x<DEFAULT_SIZE ; x++) {
  for (y=0 ; y<DEFAULT_SIZE ; y++) {
   data[y][x][0] =
   data[y][x][1] =
   data[y][x][2] = tr.identityLightByte;
   data[y][x][3] = 255;
  }
 }

 tr.identityLightImage = R_CreateImage("*identityLight", (byte *)data, 8, 8, IMGTYPE_COLORALPHA, IMGFLAG_NONE, 0);


 for(x=0;x<32;x++) {

  tr.scratchImage[x] = R_CreateImage("*scratch", (byte *)data, DEFAULT_SIZE, DEFAULT_SIZE, IMGTYPE_COLORALPHA, IMGFLAG_PICMIP | IMGFLAG_CLAMPTOEDGE, 0);
 }

 R_CreateDlightImage();
 R_CreateFogImage();
}
