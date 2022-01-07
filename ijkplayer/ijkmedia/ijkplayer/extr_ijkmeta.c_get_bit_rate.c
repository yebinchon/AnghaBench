
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_3__ {int codec_type; int bit_rate; int sample_rate; int channels; int codec_id; } ;
typedef TYPE_1__ AVCodecParameters ;







 int av_get_bits_per_sample (int ) ;

__attribute__((used)) static int64_t get_bit_rate(AVCodecParameters *codecpar)
{
    int64_t bit_rate;
    int bits_per_sample;

    switch (codecpar->codec_type) {
        case 128:
        case 130:
        case 129:
        case 132:
            bit_rate = codecpar->bit_rate;
            break;
        case 131:
            bits_per_sample = av_get_bits_per_sample(codecpar->codec_id);
            bit_rate = bits_per_sample ? codecpar->sample_rate * codecpar->channels * bits_per_sample : codecpar->bit_rate;
            break;
        default:
            bit_rate = 0;
            break;
    }
    return bit_rate;
}
