
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int imgFlags_t ;
struct TYPE_6__ {int integer; } ;
struct TYPE_5__ {int numCubemaps; TYPE_1__* cubemaps; } ;
struct TYPE_4__ {scalar_t__ image; } ;


 int GL_RGBA8 ;
 int IMGFLAG_CLAMPTOEDGE ;
 int IMGFLAG_CUBEMAP ;
 int IMGFLAG_MIPMAP ;
 int IMGFLAG_NOLIGHTSCALE ;
 int IMGFLAG_NO_COMPRESSION ;
 int IMGTYPE_COLORALPHA ;
 int RE_ClearScene () ;
 scalar_t__ R_CreateImage (int ,int *,int ,int ,int ,int,int ) ;
 int R_InitNextFrame () ;
 int R_IssuePendingRenderCommands () ;
 int R_RenderCubemapSide (int,int,int ) ;
 int qfalse ;
 TYPE_3__* r_cubemapSize ;
 TYPE_2__ tr ;
 int va (char*,int) ;

void R_RenderMissingCubemaps(void)
{
 int i, j;
 imgFlags_t flags = IMGFLAG_NO_COMPRESSION | IMGFLAG_CLAMPTOEDGE | IMGFLAG_MIPMAP | IMGFLAG_NOLIGHTSCALE | IMGFLAG_CUBEMAP;

 for (i = 0; i < tr.numCubemaps; i++)
 {
  if (!tr.cubemaps[i].image)
  {
   tr.cubemaps[i].image = R_CreateImage(va("*cubeMap%d", i), ((void*)0), r_cubemapSize->integer, r_cubemapSize->integer, IMGTYPE_COLORALPHA, flags, GL_RGBA8);

   for (j = 0; j < 6; j++)
   {
    RE_ClearScene();
    R_RenderCubemapSide(i, j, qfalse);
    R_IssuePendingRenderCommands();
    R_InitNextFrame();
   }
  }
 }
}
