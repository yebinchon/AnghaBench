
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {int vdec_type; } ;
struct TYPE_18__ {TYPE_3__ stat; TYPE_2__* is; } ;
struct TYPE_17__ {int func_run_sync; int func_destroy; TYPE_5__* opaque; } ;
struct TYPE_16__ {TYPE_7__* ffp; } ;
struct TYPE_15__ {int codec_id; } ;
struct TYPE_12__ {TYPE_4__* avctx; } ;
struct TYPE_13__ {TYPE_1__ viddec; } ;
typedef TYPE_5__ IJKFF_Pipenode_Opaque ;
typedef TYPE_6__ IJKFF_Pipenode ;
typedef TYPE_7__ FFPlayer ;


 int AVCODEC_MODULE_NAME ;
 int FFP_PROPV_DECODER_AVCODEC ;
 int avcodec_get_name (int ) ;
 int ffp_set_video_codec_info (TYPE_7__*,int ,int ) ;
 TYPE_6__* ffpipenode_alloc (int) ;
 int func_destroy ;
 int func_run_sync ;

IJKFF_Pipenode *ffpipenode_create_video_decoder_from_ffplay(FFPlayer *ffp)
{
    IJKFF_Pipenode *node = ffpipenode_alloc(sizeof(IJKFF_Pipenode_Opaque));
    if (!node)
        return node;

    IJKFF_Pipenode_Opaque *opaque = node->opaque;
    opaque->ffp = ffp;

    node->func_destroy = func_destroy;
    node->func_run_sync = func_run_sync;

    ffp_set_video_codec_info(ffp, AVCODEC_MODULE_NAME, avcodec_get_name(ffp->is->viddec.avctx->codec_id));
    ffp->stat.vdec_type = FFP_PROPV_DECODER_AVCODEC;
    return node;
}
