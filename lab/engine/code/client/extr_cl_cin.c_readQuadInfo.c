
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int byte ;
struct TYPE_6__ {int xsize; int ysize; int maxsize; int minsize; int CIN_HEIGHT; int CIN_WIDTH; int samplesPerLine; int samplesPerPixel; int screenDelta; int* t; int drawX; int drawY; int VQBuffer; int VQ1; int VQNormal; int VQ0; void* smootheddouble; void* half; } ;
struct TYPE_4__ {scalar_t__ hardwareType; int maxTextureSize; } ;
struct TYPE_5__ {TYPE_1__ glconfig; } ;


 int Com_Printf (char*) ;
 scalar_t__ GLHW_RAGEPRO ;
 TYPE_3__* cinTable ;
 TYPE_2__ cls ;
 size_t currentHandle ;
 void* qfalse ;

__attribute__((used)) static void readQuadInfo( byte *qData )
{
 if (currentHandle < 0) return;

 cinTable[currentHandle].xsize = qData[0]+qData[1]*256;
 cinTable[currentHandle].ysize = qData[2]+qData[3]*256;
 cinTable[currentHandle].maxsize = qData[4]+qData[5]*256;
 cinTable[currentHandle].minsize = qData[6]+qData[7]*256;

 cinTable[currentHandle].CIN_HEIGHT = cinTable[currentHandle].ysize;
 cinTable[currentHandle].CIN_WIDTH = cinTable[currentHandle].xsize;

 cinTable[currentHandle].samplesPerLine = cinTable[currentHandle].CIN_WIDTH*cinTable[currentHandle].samplesPerPixel;
 cinTable[currentHandle].screenDelta = cinTable[currentHandle].CIN_HEIGHT*cinTable[currentHandle].samplesPerLine;

 cinTable[currentHandle].half = qfalse;
 cinTable[currentHandle].smootheddouble = qfalse;

 cinTable[currentHandle].VQ0 = cinTable[currentHandle].VQNormal;
 cinTable[currentHandle].VQ1 = cinTable[currentHandle].VQBuffer;

 cinTable[currentHandle].t[0] = cinTable[currentHandle].screenDelta;
 cinTable[currentHandle].t[1] = -cinTable[currentHandle].screenDelta;

        cinTable[currentHandle].drawX = cinTable[currentHandle].CIN_WIDTH;
        cinTable[currentHandle].drawY = cinTable[currentHandle].CIN_HEIGHT;


 if ( cls.glconfig.hardwareType == GLHW_RAGEPRO || cls.glconfig.maxTextureSize <= 256) {
                if (cinTable[currentHandle].drawX>256) {
                        cinTable[currentHandle].drawX = 256;
                }
                if (cinTable[currentHandle].drawY>256) {
                        cinTable[currentHandle].drawY = 256;
                }
  if (cinTable[currentHandle].CIN_WIDTH != 256 || cinTable[currentHandle].CIN_HEIGHT != 256) {
   Com_Printf("HACK: approxmimating cinematic for Rage Pro or Voodoo\n");
  }
 }
}
