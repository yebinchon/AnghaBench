
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_8__ {scalar_t__ seek_pos; TYPE_1__* ic; } ;
typedef TYPE_2__ VideoState ;
struct TYPE_9__ {scalar_t__ no_time_adjust; TYPE_2__* is; } ;
struct TYPE_7__ {scalar_t__ start_time; } ;
typedef TYPE_3__ FFPlayer ;


 scalar_t__ AV_NOPTS_VALUE ;
 int assert (TYPE_3__*) ;
 scalar_t__ fftime_to_milliseconds (scalar_t__) ;
 double get_master_clock (TYPE_2__*) ;
 scalar_t__ isnan (double) ;

long ffp_get_current_position_l(FFPlayer *ffp)
{
    assert(ffp);
    VideoState *is = ffp->is;
    if (!is || !is->ic)
        return 0;

    int64_t start_time = is->ic->start_time;
    int64_t start_diff = 0;
    if (start_time > 0 && start_time != AV_NOPTS_VALUE)
        start_diff = fftime_to_milliseconds(start_time);

    int64_t pos = 0;
    double pos_clock = get_master_clock(is);
    if (isnan(pos_clock)) {
        pos = fftime_to_milliseconds(is->seek_pos);
    } else {
        pos = pos_clock * 1000;
    }





    if (ffp->no_time_adjust) {
        return (long)pos;
    }

    if (pos < 0 || pos < start_diff)
        return 0;

    int64_t adjust_pos = pos - start_diff;
    return (long)adjust_pos;
}
