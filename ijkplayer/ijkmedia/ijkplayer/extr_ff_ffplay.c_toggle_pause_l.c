
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int serial; } ;
struct TYPE_7__ {int pause_req; scalar_t__ step; TYPE_5__ audclk; TYPE_5__ vidclk; } ;
typedef TYPE_1__ VideoState ;
struct TYPE_8__ {int auto_resume; TYPE_1__* is; } ;
typedef TYPE_2__ FFPlayer ;


 int get_clock (TYPE_5__*) ;
 int set_clock (TYPE_5__*,int ,int ) ;
 int stream_update_pause_l (TYPE_2__*) ;

__attribute__((used)) static void toggle_pause_l(FFPlayer *ffp, int pause_on)
{
    VideoState *is = ffp->is;
    if (is->pause_req && !pause_on) {
        set_clock(&is->vidclk, get_clock(&is->vidclk), is->vidclk.serial);
        set_clock(&is->audclk, get_clock(&is->audclk), is->audclk.serial);
    }
    is->pause_req = pause_on;
    ffp->auto_resume = !pause_on;
    stream_update_pause_l(ffp);
    is->step = 0;
}
