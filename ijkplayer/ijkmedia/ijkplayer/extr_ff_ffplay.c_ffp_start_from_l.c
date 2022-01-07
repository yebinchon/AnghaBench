
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int VideoState ;
struct TYPE_6__ {int auto_resume; int * is; } ;
typedef TYPE_1__ FFPlayer ;


 int EIJK_NULL_IS_PTR ;
 int assert (TYPE_1__*) ;
 int ffp_seek_to_l (TYPE_1__*,long) ;
 int ffp_toggle_buffering (TYPE_1__*,int) ;

int ffp_start_from_l(FFPlayer *ffp, long msec)
{
    assert(ffp);
    VideoState *is = ffp->is;
    if (!is)
        return EIJK_NULL_IS_PTR;

    ffp->auto_resume = 1;
    ffp_toggle_buffering(ffp, 1);
    ffp_seek_to_l(ffp, msec);
    return 0;
}
