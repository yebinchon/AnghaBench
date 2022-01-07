
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int name; } ;
typedef TYPE_1__ AVInputFormat ;


 int AV_LOG_INFO ;
 int AV_LOG_WARNING ;
 int av_log (int *,int ,char*,int ) ;
 int av_register_input_format (TYPE_1__*) ;
 scalar_t__ ijkav_find_input_format (int ) ;

__attribute__((used)) static void ijkav_register_input_format(AVInputFormat *iformat)
{
    if (ijkav_find_input_format(iformat->name)) {
        av_log(((void*)0), AV_LOG_WARNING, "skip     demuxer : %s (duplicated)\n", iformat->name);
    } else {
        av_log(((void*)0), AV_LOG_INFO, "register demuxer : %s\n", iformat->name);
        av_register_input_format(iformat);
    }
}
