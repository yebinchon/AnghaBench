
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int step; scalar_t__ paused; } ;
typedef TYPE_1__ VideoState ;
struct TYPE_6__ {TYPE_1__* is; } ;
typedef TYPE_2__ FFPlayer ;


 int stream_toggle_pause_l (TYPE_2__*,int ) ;

__attribute__((used)) static void step_to_next_frame_l(FFPlayer *ffp)
{
    VideoState *is = ffp->is;
    is->step = 1;

    if (is->paused)
        stream_toggle_pause_l(ffp, 0);
}
