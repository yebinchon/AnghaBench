
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec4_t ;


 int CG_FillRect (int,int,int,int,int ) ;
 int SCREEN_HEIGHT ;
 int SCREEN_WIDTH ;
 int dmlab_get_filled_rectangle (int,int*,int*,int*,int*,int ) ;
 int dmlab_make_filled_rectangles (int ,int ) ;

__attribute__((used)) static void CG_DrawScriptFilledRectangles( void ) {
 int i, x, y, width, height;
 vec4_t rgba;
 int c = dmlab_make_filled_rectangles( SCREEN_WIDTH, SCREEN_HEIGHT );
 for (i = 0; i < c; ++i) {
  dmlab_get_filled_rectangle( i, &x, &y, &width, &height, rgba );
  CG_FillRect( x, y, width, height, rgba );
 }
}
