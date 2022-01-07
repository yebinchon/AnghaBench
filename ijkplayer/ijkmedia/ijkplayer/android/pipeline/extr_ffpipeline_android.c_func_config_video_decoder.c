
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int node_vdec; } ;
struct TYPE_9__ {TYPE_1__* opaque; } ;
struct TYPE_8__ {int weak_vout; } ;
typedef TYPE_1__ IJKFF_Pipeline_Opaque ;
typedef TYPE_2__ IJKFF_Pipeline ;
typedef TYPE_3__ FFPlayer ;


 int ffpipenode_config_from_android_mediacodec (TYPE_3__*,TYPE_2__*,int ,int ) ;

__attribute__((used)) static int func_config_video_decoder(IJKFF_Pipeline *pipeline, FFPlayer *ffp)
{
    IJKFF_Pipeline_Opaque *opaque = pipeline->opaque;
    int ret = ((void*)0);

    if (ffp->node_vdec) {
        ret = ffpipenode_config_from_android_mediacodec(ffp, pipeline, opaque->weak_vout, ffp->node_vdec);
    }

    return ret;
}
