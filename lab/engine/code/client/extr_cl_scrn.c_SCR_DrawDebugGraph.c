
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_12__ {int integer; } ;
struct TYPE_11__ {float integer; } ;
struct TYPE_10__ {float integer; } ;
struct TYPE_7__ {int vidWidth; int vidHeight; } ;
struct TYPE_9__ {int whiteShader; TYPE_1__ glconfig; } ;
struct TYPE_8__ {int (* DrawStretchPic ) (int,int,int,int,int ,int ,int ,int ,int ) ;int (* SetColor ) (int *) ;} ;


 int ARRAY_LEN (float*) ;
 TYPE_6__* cl_graphheight ;
 TYPE_5__* cl_graphscale ;
 TYPE_4__* cl_graphshift ;
 TYPE_3__ cls ;
 int current ;
 int ** g_color_table ;
 TYPE_2__ re ;
 int stub1 (int *) ;
 int stub2 (int,int,int,int,int ,int ,int ,int ,int ) ;
 int stub3 (int *) ;
 int stub4 (int,int,int,int,int ,int ,int ,int ,int ) ;
 float* values ;

void SCR_DrawDebugGraph (void)
{
 int a, x, y, w, i, h;
 float v;




 w = cls.glconfig.vidWidth;
 x = 0;
 y = cls.glconfig.vidHeight;
 re.SetColor( g_color_table[0] );
 re.DrawStretchPic(x, y - cl_graphheight->integer,
  w, cl_graphheight->integer, 0, 0, 0, 0, cls.whiteShader );
 re.SetColor( ((void*)0) );

 for (a=0 ; a<w ; a++)
 {
  i = (ARRAY_LEN(values)+current-1-(a % ARRAY_LEN(values))) % ARRAY_LEN(values);
  v = values[i];
  v = v * cl_graphscale->integer + cl_graphshift->integer;

  if (v < 0)
   v += cl_graphheight->integer * (1+(int)(-v / cl_graphheight->integer));
  h = (int)v % cl_graphheight->integer;
  re.DrawStretchPic( x+w-1-a, y - h, 1, h, 0, 0, 0, 0, cls.whiteShader );
 }
}
