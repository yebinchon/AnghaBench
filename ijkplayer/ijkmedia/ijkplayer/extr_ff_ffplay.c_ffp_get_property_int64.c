
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_9__ {int packets; int bytes; int duration; } ;
struct TYPE_8__ {int packets; int bytes; int duration; } ;
struct TYPE_10__ {int logical_file_size; int cache_count_bytes; int cache_file_pos; int cache_file_forwards; int cache_physical_pos; int byte_count; int latest_seek_load_duration; int buf_capacity; int buf_forwards; int buf_backwards; int tcp_read_sampler; int bit_rate; TYPE_3__ audio_cache; TYPE_2__ video_cache; int vdec_type; } ;
struct TYPE_11__ {TYPE_4__ stat; TYPE_1__* is; } ;
struct TYPE_7__ {int subtitle_stream; int audio_stream; int video_stream; } ;
typedef TYPE_5__ FFPlayer ;


 int FFP_PROPV_DECODER_AVCODEC ;
 int SDL_SpeedSampler2GetSpeed (int *) ;

int64_t ffp_get_property_int64(FFPlayer *ffp, int id, int64_t default_value)
{
    switch (id) {
        case 134:
            if (!ffp || !ffp->is)
                return default_value;
            return ffp->is->video_stream;
        case 136:
            if (!ffp || !ffp->is)
                return default_value;
            return ffp->is->audio_stream;
        case 135:
            if (!ffp || !ffp->is)
                return default_value;
            return ffp->is->subtitle_stream;
        case 128:
            if (!ffp)
                return default_value;
            return ffp->stat.vdec_type;
        case 144:
            return FFP_PROPV_DECODER_AVCODEC;

        case 130:
            if (!ffp)
                return default_value;
            return ffp->stat.video_cache.duration;
        case 146:
            if (!ffp)
                return default_value;
            return ffp->stat.audio_cache.duration;
        case 131:
            if (!ffp)
                return default_value;
            return ffp->stat.video_cache.bytes;
        case 147:
            if (!ffp)
                return default_value;
            return ffp->stat.audio_cache.bytes;
        case 129:
            if (!ffp)
                return default_value;
            return ffp->stat.video_cache.packets;
        case 145:
            if (!ffp)
                return default_value;
            return ffp->stat.audio_cache.packets;
        case 143:
            return ffp ? ffp->stat.bit_rate : default_value;
        case 133:
            return ffp ? SDL_SpeedSampler2GetSpeed(&ffp->stat.tcp_read_sampler) : default_value;
        case 150:
            if (!ffp)
                return default_value;
            return ffp->stat.buf_backwards;
        case 148:
            if (!ffp)
                return default_value;
            return ffp->stat.buf_forwards;
        case 149:
            if (!ffp)
                return default_value;
            return ffp->stat.buf_capacity;
        case 138:
            return ffp ? ffp->stat.latest_seek_load_duration : default_value;
        case 132:
            return ffp ? ffp->stat.byte_count : default_value;
        case 139:
            if (!ffp)
                return default_value;
            return ffp->stat.cache_physical_pos;
       case 141:
            if (!ffp)
                return default_value;
            return ffp->stat.cache_file_forwards;
       case 140:
            if (!ffp)
                return default_value;
            return ffp->stat.cache_file_pos;
       case 142:
            if (!ffp)
                return default_value;
            return ffp->stat.cache_count_bytes;
       case 137:
            if (!ffp)
                return default_value;
            return ffp->stat.logical_file_size;
        default:
            return default_value;
    }
}
