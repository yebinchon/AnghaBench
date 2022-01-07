
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {long seek_msec; int ffplayer; scalar_t__ seek_req; } ;
typedef TYPE_1__ IjkMediaPlayer ;


 long ffp_get_current_position_l (int ) ;

__attribute__((used)) static long ijkmp_get_current_position_l(IjkMediaPlayer *mp)
{
    if (mp->seek_req)
        return mp->seek_msec;
    return ffp_get_current_position_l(mp->ffplayer);
}
