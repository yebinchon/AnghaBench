
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * is; } ;
typedef TYPE_1__ FFPlayer ;


 int assert (TYPE_1__*) ;
 int ffp_stop_l (TYPE_1__*) ;
 int stream_close (TYPE_1__*) ;

int ffp_wait_stop_l(FFPlayer *ffp)
{
    assert(ffp);

    if (ffp->is) {
        ffp_stop_l(ffp);
        stream_close(ffp);
        ffp->is = ((void*)0);
    }
    return 0;
}
