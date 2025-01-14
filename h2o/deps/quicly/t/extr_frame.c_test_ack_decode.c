
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int largest_acknowledged; scalar_t__ num_gaps; int* ack_block_lengths; int smallest_acknowledged; int* gaps; scalar_t__ ack_delay; } ;
typedef TYPE_1__ quicly_ack_frame_t ;
typedef int pat ;


 int QUICLY_ACK_MAX_GAPS ;
 int ok (int) ;
 scalar_t__ quicly_decode_ack_frame (int const**,int const*,TYPE_1__*,int ) ;
 int* quicly_encodev (int*,int) ;
 int subtest (char*,int ) ;
 int test_ack_decode_underflow ;

__attribute__((used)) static void test_ack_decode(void)
{
    {
        const uint8_t pat[] = {0x34, 0x00, 0x00, 0x11}, *src = pat;
        quicly_ack_frame_t decoded;
        ok(quicly_decode_ack_frame(&src, pat + sizeof(pat), &decoded, 0) == 0);
        ok(src == pat + sizeof(pat));
        ok(decoded.largest_acknowledged == 0x34);
        ok(decoded.num_gaps == 0);
        ok(decoded.ack_block_lengths[0] == 0x12);
        ok(decoded.smallest_acknowledged == 0x34 - 0x12 + 1);
    }

    {
        const uint8_t pat[] = {0x34, 0x00, 0x02, 0x00, 0x01, 0x02, 0x03, 0x04}, *src = pat;
        quicly_ack_frame_t decoded;
        ok(quicly_decode_ack_frame(&src, pat + sizeof(pat), &decoded, 0) == 0);
        ok(src == pat + sizeof(pat));
        ok(decoded.largest_acknowledged == 0x34);
        ok(decoded.num_gaps == 2);
        ok(decoded.ack_block_lengths[0] == 1);
        ok(decoded.gaps[0] == 2);
        ok(decoded.ack_block_lengths[1] == 3);
        ok(decoded.gaps[1] == 4);
        ok(decoded.ack_block_lengths[2] == 5);
        ok(decoded.smallest_acknowledged == 0x34 - 1 - 2 - 3 - 4 - 5 + 1);
    }

    {
        uint8_t pat[1024], *end = pat;
        const uint8_t *src = pat;
        int i, range_sum;
        quicly_ack_frame_t decoded;
        end = quicly_encodev(end, 0xFA00);
        end = quicly_encodev(end, 0);
        end = quicly_encodev(end, QUICLY_ACK_MAX_GAPS + 30);
        end = quicly_encodev(end, 8);
        for (i = 0; i < QUICLY_ACK_MAX_GAPS + 30; ++i) {
            end = quicly_encodev(end, i);
            end = quicly_encodev(end, i % 10);
        }

        ok(quicly_decode_ack_frame(&src, end, &decoded, 0) == 0);
        ok(decoded.largest_acknowledged == 0xFA00);
        ok(decoded.ack_delay == 0);
        ok(decoded.num_gaps == QUICLY_ACK_MAX_GAPS);
        ok(decoded.ack_block_lengths[0] == 8 + 1);
        range_sum = decoded.ack_block_lengths[0];
        for (i = 0; i < decoded.num_gaps; ++i) {
            ok(decoded.gaps[i] == i + 1);
            ok(decoded.ack_block_lengths[i + 1] == (i % 10) + 1);
            range_sum += decoded.gaps[i] + decoded.ack_block_lengths[i + 1];
        }
        ok(src == end);
        ok(decoded.smallest_acknowledged == 0xFA00 - range_sum + 1);
    }

    subtest("underflow", test_ack_decode_underflow);
}
