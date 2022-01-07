
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_3__ {int exclusive; int dependency; scalar_t__ weight; } ;
typedef TYPE_1__ h2o_http2_priority_t ;


 int h2o_http2_decode32u (int const*) ;

__attribute__((used)) static const uint8_t *decode_priority(h2o_http2_priority_t *priority, const uint8_t *src)
{
    uint32_t u4 = h2o_http2_decode32u(src);
    src += 4;
    priority->exclusive = u4 >> 31;
    priority->dependency = u4 & 0x7fffffff;
    priority->weight = (uint16_t)*src++ + 1;
    return src;
}
