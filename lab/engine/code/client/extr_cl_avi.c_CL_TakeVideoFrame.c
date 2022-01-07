
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int motionJpeg; int eBuffer; int cBuffer; int height; int width; int fileOpen; } ;
struct TYPE_3__ {int (* TakeVideoFrame ) (int ,int ,int ,int ,int ) ;} ;


 TYPE_2__ afd ;
 TYPE_1__ re ;
 int stub1 (int ,int ,int ,int ,int ) ;

void CL_TakeVideoFrame( void )
{

  if( !afd.fileOpen )
    return;

  re.TakeVideoFrame( afd.width, afd.height,
      afd.cBuffer, afd.eBuffer, afd.motionJpeg );
}
