
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int whiteShader; } ;
struct TYPE_3__ {int (* SetColor ) (float const*) ;int (* DrawStretchPic ) (float,float,float,float,int ,int ,int ,int ,int ) ;} ;


 int SCR_AdjustFrom640 (float*,float*,float*,float*) ;
 TYPE_2__ cls ;
 TYPE_1__ re ;
 int stub1 (float const*) ;
 int stub2 (float,float,float,float,int ,int ,int ,int ,int ) ;
 int stub3 (float const*) ;

void SCR_FillRect( float x, float y, float width, float height, const float *color ) {
 re.SetColor( color );

 SCR_AdjustFrom640( &x, &y, &width, &height );
 re.DrawStretchPic( x, y, width, height, 0, 0, 0, 0, cls.whiteShader );

 re.SetColor( ((void*)0) );
}
