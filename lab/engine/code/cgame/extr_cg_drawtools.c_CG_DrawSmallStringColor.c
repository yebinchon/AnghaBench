
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec4_t ;


 int CG_DrawStringExt (int,int,char const*,int ,int ,int ,int ,int ,int ) ;
 int SMALLCHAR_HEIGHT ;
 int SMALLCHAR_WIDTH ;
 int qfalse ;
 int qtrue ;

void CG_DrawSmallStringColor( int x, int y, const char *s, vec4_t color ) {
 CG_DrawStringExt( x, y, s, color, qtrue, qfalse, SMALLCHAR_WIDTH, SMALLCHAR_HEIGHT, 0 );
}
