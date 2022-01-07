
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int realTime; } ;
struct TYPE_4__ {TYPE_1__ uiDC; } ;


 int Text_PaintCenter (int,float,float,int ,char const*,int ) ;
 int UI_PrintTime (char*,int,int) ;
 int UI_ReadableSize (char*,int,int) ;
 int UI_SetColor (int ) ;
 int colorWhite ;
 int trap_Cvar_VariableValue (char*) ;
 TYPE_2__ uiInfo ;
 char* va (char*,char const*,...) ;

__attribute__((used)) static void UI_DisplayDownloadInfo( const char *downloadName, float centerPoint, float yStart, float scale ) {
 static char dlText[] = "Downloading:";
 static char etaText[] = "Estimated time left:";
 static char xferText[] = "Transfer rate:";

 int downloadSize, downloadCount, downloadTime;
 char dlSizeBuf[64], totalSizeBuf[64], xferRateBuf[64], dlTimeBuf[64];
 int xferRate;
 int leftWidth;
 const char *s;

 downloadSize = trap_Cvar_VariableValue( "cl_downloadSize" );
 downloadCount = trap_Cvar_VariableValue( "cl_downloadCount" );
 downloadTime = trap_Cvar_VariableValue( "cl_downloadTime" );

 leftWidth = 320;

 UI_SetColor(colorWhite);
 Text_PaintCenter(centerPoint, yStart + 112, scale, colorWhite, dlText, 0);
 Text_PaintCenter(centerPoint, yStart + 192, scale, colorWhite, etaText, 0);
 Text_PaintCenter(centerPoint, yStart + 248, scale, colorWhite, xferText, 0);

 if (downloadSize > 0) {
  s = va( "%s (%d%%)", downloadName,
   (int)( (float)downloadCount * 100.0f / downloadSize ) );
 } else {
  s = downloadName;
 }

 Text_PaintCenter(centerPoint, yStart+136, scale, colorWhite, s, 0);

 UI_ReadableSize( dlSizeBuf, sizeof dlSizeBuf, downloadCount );
 UI_ReadableSize( totalSizeBuf, sizeof totalSizeBuf, downloadSize );

 if (downloadCount < 4096 || !downloadTime) {
  Text_PaintCenter(leftWidth, yStart+216, scale, colorWhite, "estimating", 0);
  Text_PaintCenter(leftWidth, yStart+160, scale, colorWhite, va("(%s of %s copied)", dlSizeBuf, totalSizeBuf), 0);
 } else {
  if ((uiInfo.uiDC.realTime - downloadTime) / 1000) {
   xferRate = downloadCount / ((uiInfo.uiDC.realTime - downloadTime) / 1000);
  } else {
   xferRate = 0;
  }
  UI_ReadableSize( xferRateBuf, sizeof xferRateBuf, xferRate );


  if (downloadSize && xferRate) {
   int n = downloadSize / xferRate;


   UI_PrintTime ( dlTimeBuf, sizeof dlTimeBuf,
    (n - (((downloadCount/1024) * n) / (downloadSize/1024))) * 1000);

   Text_PaintCenter(leftWidth, yStart+216, scale, colorWhite, dlTimeBuf, 0);
   Text_PaintCenter(leftWidth, yStart+160, scale, colorWhite, va("(%s of %s copied)", dlSizeBuf, totalSizeBuf), 0);
  } else {
   Text_PaintCenter(leftWidth, yStart+216, scale, colorWhite, "estimating", 0);
   if (downloadSize) {
    Text_PaintCenter(leftWidth, yStart+160, scale, colorWhite, va("(%s of %s copied)", dlSizeBuf, totalSizeBuf), 0);
   } else {
    Text_PaintCenter(leftWidth, yStart+160, scale, colorWhite, va("(%s copied)", dlSizeBuf), 0);
   }
  }

  if (xferRate) {
   Text_PaintCenter(leftWidth, yStart+272, scale, colorWhite, va("%s/Sec", xferRateBuf), 0);
  }
 }
}
