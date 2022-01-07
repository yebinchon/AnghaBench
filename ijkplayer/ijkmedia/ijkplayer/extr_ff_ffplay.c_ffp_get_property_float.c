
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {float vdps; float vfps; float avdelay; float avdiff; float drop_frame_rate; } ;
struct TYPE_5__ {float pf_playback_rate; float pf_playback_volume; TYPE_1__ stat; } ;
typedef TYPE_2__ FFPlayer ;
float ffp_get_property_float(FFPlayer *ffp, int id, float default_value)
{
    switch (id) {
        case 129:
            return ffp ? ffp->stat.vdps : default_value;
        case 128:
            return ffp ? ffp->stat.vfps : default_value;
        case 131:
            return ffp ? ffp->pf_playback_rate : default_value;
        case 134:
            return ffp ? ffp->stat.avdelay : default_value;
        case 133:
            return ffp ? ffp->stat.avdiff : default_value;
        case 130:
            return ffp ? ffp->pf_playback_volume : default_value;
        case 132:
            return ffp ? ffp->stat.drop_frame_rate : default_value;
        default:
            return default_value;
    }
}
