
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qhandle_t ;


 int CG_AdjustFrom640 (float*,float*,float*,float*) ;
 int trap_R_DrawStretchPic (float,float,float,float,int ,int ,int,int,int ) ;

void CG_DrawPic( float x, float y, float width, float height, qhandle_t hShader ) {
 CG_AdjustFrom640( &x, &y, &width, &height );
 trap_R_DrawStretchPic( x, y, width, height, 0, 0, 1, 1, hShader );
}
