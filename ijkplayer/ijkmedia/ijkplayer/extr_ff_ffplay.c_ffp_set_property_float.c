
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FFPlayer ;




 int ffp_set_playback_rate (int *,float) ;
 int ffp_set_playback_volume (int *,float) ;

void ffp_set_property_float(FFPlayer *ffp, int id, float value)
{
    switch (id) {
        case 129:
            ffp_set_playback_rate(ffp, value);
            break;
        case 128:
            ffp_set_playback_volume(ffp, value);
            break;
        default:
            return;
    }
}
