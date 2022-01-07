
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Com_sprintf (char*,int ,char*,...) ;
 int MAX_OSPATH ;

void R_ScreenshotFilenameJPEG( int lastNumber, char *fileName ) {
 int a,b,c,d;

 if ( lastNumber < 0 || lastNumber > 9999 ) {
  Com_sprintf( fileName, MAX_OSPATH, "screenshots/shot9999.jpg" );
  return;
 }

 a = lastNumber / 1000;
 lastNumber -= a*1000;
 b = lastNumber / 100;
 lastNumber -= b*100;
 c = lastNumber / 10;
 lastNumber -= c*10;
 d = lastNumber;

 Com_sprintf( fileName, MAX_OSPATH, "screenshots/shot%i%i%i%i.jpg"
  , a, b, c, d );
}
