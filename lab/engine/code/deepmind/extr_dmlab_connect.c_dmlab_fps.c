
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {double engine_frame_period_msec; } ;
typedef TYPE_1__ GameContext ;


 double kEngineTimePerExternalTime ;

__attribute__((used)) static int dmlab_fps(void* context) {
  GameContext* gc = context;
  if (gc->engine_frame_period_msec > 0) {
    return (1000.0 * kEngineTimePerExternalTime) / gc->engine_frame_period_msec;
  } else {
    return 0;
  }
}
