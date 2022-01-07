
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ node_vdec; } ;
typedef TYPE_1__ FFPlayer ;


 int ffpipenode_run_sync (scalar_t__) ;

__attribute__((used)) static int video_thread(void *arg)
{
    FFPlayer *ffp = (FFPlayer *)arg;
    int ret = 0;

    if (ffp->node_vdec) {
        ret = ffpipenode_run_sync(ffp->node_vdec);
    }
    return ret;
}
