
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int clearDepthCommand_t ;
struct TYPE_4__ {scalar_t__ integer; } ;
struct TYPE_3__ {scalar_t__ numIndexes; } ;


 int GL_DEPTH_BUFFER_BIT ;
 int RB_EndSurface () ;
 int RB_ShowImages () ;
 int qglClear (int ) ;
 TYPE_2__* r_showImages ;
 TYPE_1__ tess ;

const void *RB_ClearDepth(const void *data)
{
 const clearDepthCommand_t *cmd = data;

 if(tess.numIndexes)
  RB_EndSurface();


 if (r_showImages->integer)
  RB_ShowImages();

 qglClear(GL_DEPTH_BUFFER_BIT);

 return (const void *)(cmd + 1);
}
