
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int timeResidual; } ;
struct TYPE_3__ {float value; } ;


 TYPE_2__ sv ;
 TYPE_1__* sv_fps ;

int SV_FrameMsec()
{
 if(sv_fps)
 {
  int frameMsec;

  frameMsec = 1000.0f / sv_fps->value;

  if(frameMsec < sv.timeResidual)
   return 0;
  else
   return frameMsec - sv.timeResidual;
 }
 else
  return 1;
}
