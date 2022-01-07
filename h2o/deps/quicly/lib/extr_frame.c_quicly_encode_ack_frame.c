
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
struct TYPE_5__ {int num_ranges; TYPE_1__* ranges; } ;
typedef TYPE_2__ quicly_ranges_t ;
struct TYPE_4__ {int end; int start; } ;


 int QUICLY_FRAME_TYPE_ACK ;
 int WRITE_BLOCK (int,int) ;
 int assert (int) ;
 int * quicly_encodev (int *,int) ;

uint8_t *quicly_encode_ack_frame(uint8_t *dst, uint8_t *dst_end, quicly_ranges_t *ranges, uint64_t ack_delay)
{
    size_t range_index = ranges->num_ranges - 1;

    assert(ranges->num_ranges != 0);

    *dst++ = QUICLY_FRAME_TYPE_ACK;
    dst = quicly_encodev(dst, ranges->ranges[range_index].end - 1);
    dst = quicly_encodev(dst, ack_delay);
    dst = quicly_encodev(dst, ranges->num_ranges - 1);

    while (1) {
        do { uint64_t _start = (ranges->ranges[range_index].start), _end = (ranges->ranges[range_index].end); assert(_start < _end); if (dst_end - dst < 8) return ((void*)0); dst = quicly_encodev(dst, _end - _start - 1); } while (0);
        if (range_index-- == 0)
            break;
        do { uint64_t _start = (ranges->ranges[range_index].end), _end = (ranges->ranges[range_index + 1].start); assert(_start < _end); if (dst_end - dst < 8) return ((void*)0); dst = quicly_encodev(dst, _end - _start - 1); } while (0);
    }

    return dst;


}
