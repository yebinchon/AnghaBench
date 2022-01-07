
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIGCHAR_HEIGHT ;
 int BIGCHAR_WIDTH ;
 int CG_DrawStringExt (int,int,char const*,float*,int ,int ,int ,int ,int ) ;
 int qfalse ;
 int qtrue ;

void CG_DrawBigString( int x, int y, const char *s, float alpha ) {
 float color[4];

 color[0] = color[1] = color[2] = 1.0;
 color[3] = alpha;
 CG_DrawStringExt( x, y, s, color, qfalse, qtrue, BIGCHAR_WIDTH, BIGCHAR_HEIGHT, 0 );
}
