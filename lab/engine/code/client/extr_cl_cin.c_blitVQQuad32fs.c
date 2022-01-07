
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int byte ;
struct TYPE_4__ {int * mcomp; } ;
struct TYPE_3__ {int samplesPerLine; } ;


 int blit2_32 (int *,int *,int) ;
 int blit4_32 (int *,int *,int) ;
 int blit8_32 (int *,int *,int) ;
 TYPE_2__ cin ;
 TYPE_1__* cinTable ;
 size_t currentHandle ;
 int move4_32 (int *,int *,int) ;
 int move8_32 (int *,int *,int) ;
 int * vq2 ;
 int * vq4 ;
 int * vq8 ;

__attribute__((used)) static void blitVQQuad32fs( byte **status, unsigned char *data )
{
unsigned short newd, celdata, code;
unsigned int index, i;
int spl;

 newd = 0;
 celdata = 0;
 index = 0;

        spl = cinTable[currentHandle].samplesPerLine;

 do {
  if (!newd) {
   newd = 7;
   celdata = data[0] + data[1]*256;
   data += 2;
  } else {
   newd--;
  }

  code = (unsigned short)(celdata&0xc000);
  celdata <<= 2;

  switch (code) {
   case 0x8000:
    blit8_32( (byte *)&vq8[(*data)*128], status[index], spl );
    data++;
    index += 5;
    break;
   case 0xc000:
    index++;
    for(i=0;i<4;i++) {
     if (!newd) {
      newd = 7;
      celdata = data[0] + data[1]*256;
      data += 2;
     } else {
      newd--;
     }

     code = (unsigned short)(celdata&0xc000); celdata <<= 2;

     switch (code) {
      case 0x8000:
       blit4_32( (byte *)&vq4[(*data)*32], status[index], spl );
       data++;
       break;
      case 0xc000:
       blit2_32( (byte *)&vq2[(*data)*8], status[index], spl );
       data++;
       blit2_32( (byte *)&vq2[(*data)*8], status[index]+8, spl );
       data++;
       blit2_32( (byte *)&vq2[(*data)*8], status[index]+spl*2, spl );
       data++;
       blit2_32( (byte *)&vq2[(*data)*8], status[index]+spl*2+8, spl );
       data++;
       break;
      case 0x4000:
       move4_32( status[index] + cin.mcomp[(*data)], status[index], spl );
       data++;
       break;
     }
     index++;
    }
    break;
   case 0x4000:
    move8_32( status[index] + cin.mcomp[(*data)], status[index], spl );
    data++;
    index += 5;
    break;
   case 0x0000:
    index += 5;
    break;
  }
 } while ( status[index] != ((void*)0) );
}
