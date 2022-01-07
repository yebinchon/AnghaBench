
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int filename; scalar_t__ pb; TYPE_1__* iformat; } ;
struct TYPE_4__ {int name; } ;
typedef TYPE_2__ AVFormatContext ;


 int strcmp (int ,char*) ;
 int strncmp (int ,char*,int) ;

__attribute__((used)) static int is_realtime(AVFormatContext *s)
{
    if( !strcmp(s->iformat->name, "rtp")
       || !strcmp(s->iformat->name, "rtsp")
       || !strcmp(s->iformat->name, "sdp")
    )
        return 1;

    if(s->pb && ( !strncmp(s->filename, "rtp:", 4)
                 || !strncmp(s->filename, "udp:", 4)
                )
    )
        return 1;
    return 0;
}
