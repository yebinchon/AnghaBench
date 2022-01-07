
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int extclk; int audclk; int vidclk; } ;
typedef TYPE_1__ VideoState ;




 double get_clock (int *) ;
 int get_master_sync_type (TYPE_1__*) ;

__attribute__((used)) static double get_master_clock(VideoState *is)
{
    double val;

    switch (get_master_sync_type(is)) {
        case 128:
            val = get_clock(&is->vidclk);
            break;
        case 129:
            val = get_clock(&is->audclk);
            break;
        default:
            val = get_clock(&is->extclk);
            break;
    }
    return val;
}
