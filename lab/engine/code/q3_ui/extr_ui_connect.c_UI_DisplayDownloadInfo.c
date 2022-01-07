
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int realtime; } ;


 int UI_DROPSHADOW ;
 int UI_DrawProportionalString (int,int,char const*,int,int ) ;
 int UI_LEFT ;
 int UI_PrintTime (char*,int,int) ;
 int UI_ProportionalSizeScale (int) ;
 int UI_ProportionalStringWidth (char*) ;
 int UI_ReadableSize (char*,int,int) ;
 int UI_SMALLFONT ;
 int color_white ;
 int trap_Cvar_VariableValue (char*) ;
 TYPE_1__ uis ;
 char* va (char*,char const*,...) ;

__attribute__((used)) static void UI_DisplayDownloadInfo( const char *downloadName ) {
 static char dlText[] = "Downloading:";
 static char etaText[] = "Estimated time left:";
 static char xferText[] = "Transfer rate:";

 int downloadSize, downloadCount, downloadTime;
 char dlSizeBuf[64], totalSizeBuf[64], xferRateBuf[64], dlTimeBuf[64];
 int xferRate;
 int width, leftWidth;
 int style = UI_LEFT|UI_SMALLFONT|UI_DROPSHADOW;
 const char *s;

 downloadSize = trap_Cvar_VariableValue( "cl_downloadSize" );
 downloadCount = trap_Cvar_VariableValue( "cl_downloadCount" );
 downloadTime = trap_Cvar_VariableValue( "cl_downloadTime" );

 leftWidth = UI_ProportionalStringWidth( dlText ) * UI_ProportionalSizeScale( style );
 width = UI_ProportionalStringWidth( etaText ) * UI_ProportionalSizeScale( style );
 if (width > leftWidth) leftWidth = width;
 width = UI_ProportionalStringWidth( xferText ) * UI_ProportionalSizeScale( style );
 if (width > leftWidth) leftWidth = width;
 leftWidth += 16;

 UI_DrawProportionalString( 8, 128, dlText, style, color_white );
 UI_DrawProportionalString( 8, 160, etaText, style, color_white );
 UI_DrawProportionalString( 8, 224, xferText, style, color_white );

 if (downloadSize > 0) {
  s = va( "%s (%d%%)", downloadName, (int)( (float)downloadCount * 100.0f / downloadSize ) );
 } else {
  s = downloadName;
 }

 UI_DrawProportionalString( leftWidth, 128, s, style, color_white );

 UI_ReadableSize( dlSizeBuf, sizeof dlSizeBuf, downloadCount );
 UI_ReadableSize( totalSizeBuf, sizeof totalSizeBuf, downloadSize );

 if (downloadCount < 4096 || !downloadTime) {
  UI_DrawProportionalString( leftWidth, 160, "estimating", style, color_white );
  UI_DrawProportionalString( leftWidth, 192,
   va("(%s of %s copied)", dlSizeBuf, totalSizeBuf), style, color_white );
 } else {
   if ( (uis.realtime - downloadTime) / 1000) {
   xferRate = downloadCount / ((uis.realtime - downloadTime) / 1000);

  } else {
   xferRate = 0;
  }

  UI_ReadableSize( xferRateBuf, sizeof xferRateBuf, xferRate );


  if (downloadSize && xferRate) {
   int n = downloadSize / xferRate;


   n = (n - (((downloadCount/1024) * n) / (downloadSize/1024))) * 1000;

   UI_PrintTime ( dlTimeBuf, sizeof dlTimeBuf, n );


   UI_DrawProportionalString( leftWidth, 160,
    dlTimeBuf, style, color_white );
   UI_DrawProportionalString( leftWidth, 192,
    va("(%s of %s copied)", dlSizeBuf, totalSizeBuf), style, color_white );
  } else {
   UI_DrawProportionalString( leftWidth, 160,
    "estimating", style, color_white );
   if (downloadSize) {
    UI_DrawProportionalString( leftWidth, 192,
     va("(%s of %s copied)", dlSizeBuf, totalSizeBuf), style, color_white );
   } else {
    UI_DrawProportionalString( leftWidth, 192,
     va("(%s copied)", dlSizeBuf), style, color_white );
   }
  }

  if (xferRate) {
   UI_DrawProportionalString( leftWidth, 224,
    va("%s/Sec", xferRateBuf), style, color_white );
  }
 }
}
