
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int VideoState ;
struct TYPE_5__ {int * is; } ;
typedef TYPE_1__ FFPlayer ;


 int EIJK_NULL_IS_PTR ;
 int assert (TYPE_1__*) ;
 int toggle_pause (TYPE_1__*,int) ;

int ffp_pause_l(FFPlayer *ffp)
{
    assert(ffp);
    VideoState *is = ffp->is;
    if (!is)
        return EIJK_NULL_IS_PTR;

    toggle_pause(ffp, 1);
    return 0;
}
