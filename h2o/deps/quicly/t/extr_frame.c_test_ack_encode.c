
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int const uint8_t ;
typedef int quicly_ranges_t ;
struct TYPE_3__ {int ack_delay; int num_gaps; int largest_acknowledged; int* ack_block_lengths; int* gaps; } ;
typedef TYPE_1__ quicly_ack_frame_t ;
typedef int buf ;


 int ok (int) ;
 scalar_t__ quicly_decode_ack_frame (int const**,int const*,TYPE_1__*,int ) ;
 int const* quicly_encode_ack_frame (int const*,int const*,int *,int) ;
 int quicly_ranges_add (int *,int,int) ;
 int quicly_ranges_clear (int *) ;
 int quicly_ranges_init (int *) ;

__attribute__((used)) static void test_ack_encode(void)
{
    quicly_ranges_t ranges;
    uint8_t buf[256], *end;
    const uint8_t *src;
    quicly_ack_frame_t decoded;

    quicly_ranges_init(&ranges);
    quicly_ranges_add(&ranges, 0x12, 0x14);


    end = quicly_encode_ack_frame(buf, buf + sizeof(buf), &ranges, 63);
    ok(end - buf == 5);

    src = buf + 1;
    ok(quicly_decode_ack_frame(&src, end, &decoded, 0) == 0);
    ok(src == end);
    ok(decoded.ack_delay == 63);
    ok(decoded.num_gaps == 0);
    ok(decoded.largest_acknowledged == 0x13);
    ok(decoded.ack_block_lengths[0] == 2);

    quicly_ranges_add(&ranges, 0x10, 0x11);


    end = quicly_encode_ack_frame(buf, buf + sizeof(buf), &ranges, 63);
    ok(end - buf == 7);

    src = buf + 1;
    ok(quicly_decode_ack_frame(&src, end, &decoded, 0) == 0);
    ok(src == end);
    ok(decoded.ack_delay == 63);
    ok(decoded.num_gaps == 1);
    ok(decoded.largest_acknowledged == 0x13);
    ok(decoded.ack_block_lengths[0] == 2);
    ok(decoded.gaps[0] == 1);
    ok(decoded.ack_block_lengths[1] == 1);

    quicly_ranges_clear(&ranges);
}
