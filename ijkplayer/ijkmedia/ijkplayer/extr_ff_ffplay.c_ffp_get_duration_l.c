
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_7__ {TYPE_1__* ic; } ;
typedef TYPE_2__ VideoState ;
struct TYPE_8__ {TYPE_2__* is; } ;
struct TYPE_6__ {int duration; } ;
typedef TYPE_3__ FFPlayer ;


 int assert (TYPE_3__*) ;
 scalar_t__ fftime_to_milliseconds (int ) ;

long ffp_get_duration_l(FFPlayer *ffp)
{
    assert(ffp);
    VideoState *is = ffp->is;
    if (!is || !is->ic)
        return 0;

    int64_t duration = fftime_to_milliseconds(is->ic->duration);
    if (duration < 0)
        return 0;

    return (long)duration;
}
