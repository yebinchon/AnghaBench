
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int32_t ;
struct TYPE_7__ {scalar_t__* value; } ;
struct TYPE_6__ {int metadata; } ;
typedef TYPE_1__ AVStream ;
typedef TYPE_2__ AVDictionaryEntry ;


 int AV_LOG_WARNING ;
 int AV_PKT_DATA_DISPLAYMATRIX ;
 TYPE_2__* av_dict_get (int ,char*,int *,int ) ;
 double av_display_rotation_get (int *) ;
 int av_log (int *,int ,char*) ;
 int * av_stream_get_side_data (TYPE_1__*,int ,int *) ;
 double av_strtod (scalar_t__*,char**) ;
 int fabs (double) ;
 int floor (double) ;
 int round (double) ;
 scalar_t__ strcmp (scalar_t__*,char*) ;

double get_rotation(AVStream *st)
{
    AVDictionaryEntry *rotate_tag = av_dict_get(st->metadata, "rotate", ((void*)0), 0);
    uint8_t* displaymatrix = av_stream_get_side_data(st,
                                                     AV_PKT_DATA_DISPLAYMATRIX, ((void*)0));
    double theta = 0;

    if (rotate_tag && *rotate_tag->value && strcmp(rotate_tag->value, "0")) {
        char *tail;
        theta = av_strtod(rotate_tag->value, &tail);
        if (*tail)
            theta = 0;
    }
    if (displaymatrix && !theta)
        theta = -av_display_rotation_get((int32_t*) displaymatrix);

    theta -= 360*floor(theta/360 + 0.9/360);

    if (fabs(theta - 90*round(theta/90)) > 2)
        av_log(((void*)0), AV_LOG_WARNING, "Odd rotation angle.\n"
               "If you want to help, upload a sample "
               "of this file to ftp://upload.ffmpeg.org/incoming/ "
               "and contact the ffmpeg-devel mailing list. (ffmpeg-devel@ffmpeg.org)");

    return theta;
}
