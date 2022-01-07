
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int overlay_format; } ;
typedef TYPE_1__ FFPlayer ;


 int AV_LOG_ERROR ;







 int av_log (TYPE_1__*,int ,char*,int) ;

void ffp_set_overlay_format(FFPlayer *ffp, int chroma_fourcc)
{
    switch (chroma_fourcc) {
        case 128:
        case 134:
        case 129:
        case 132:
        case 131:
        case 130:
            ffp->overlay_format = chroma_fourcc;
            break;





        default:
            av_log(ffp, AV_LOG_ERROR, "ffp_set_overlay_format: unknown chroma fourcc: %d\n", chroma_fourcc);
            break;
    }
}
