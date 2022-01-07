
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CG_DrawPic (int,int,int,int,int ) ;
 int loadingItemIconCount ;
 int * loadingItemIcons ;
 int loadingPlayerIconCount ;
 int * loadingPlayerIcons ;

__attribute__((used)) static void CG_DrawLoadingIcons( void ) {
 int n;
 int x, y;

 for( n = 0; n < loadingPlayerIconCount; n++ ) {
  x = 16 + n * 78;
  y = 324-40;
  CG_DrawPic( x, y, 64, 64, loadingPlayerIcons[n] );
 }

 for( n = 0; n < loadingItemIconCount; n++ ) {
  y = 400-40;
  if( n >= 13 ) {
   y += 40;
  }
  x = 16 + n % 13 * 48;
  CG_DrawPic( x, y, 32, 32, loadingItemIcons[n] );
 }
}
