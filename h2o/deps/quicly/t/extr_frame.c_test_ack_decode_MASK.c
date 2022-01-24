#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_3__ {int largest_acknowledged; scalar_t__ num_gaps; int* ack_block_lengths; int smallest_acknowledged; int* gaps; scalar_t__ ack_delay; } ;
typedef  TYPE_1__ quicly_ack_frame_t ;
typedef  int /*<<< orphan*/  pat ;

/* Variables and functions */
 int QUICLY_ACK_MAX_GAPS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int const**,int const*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int* FUNC2 (int*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  test_ack_decode_underflow ; 

__attribute__((used)) static void FUNC4(void)
{
    {
        const uint8_t pat[] = {0x34, 0x00, 0x00, 0x11}, *src = pat;
        quicly_ack_frame_t decoded;
        FUNC0(FUNC1(&src, pat + sizeof(pat), &decoded, 0) == 0);
        FUNC0(src == pat + sizeof(pat));
        FUNC0(decoded.largest_acknowledged == 0x34);
        FUNC0(decoded.num_gaps == 0);
        FUNC0(decoded.ack_block_lengths[0] == 0x12);
        FUNC0(decoded.smallest_acknowledged == 0x34 - 0x12 + 1);
    }

    {
        const uint8_t pat[] = {0x34, 0x00, 0x02, 0x00, 0x01, 0x02, 0x03, 0x04}, *src = pat;
        quicly_ack_frame_t decoded;
        FUNC0(FUNC1(&src, pat + sizeof(pat), &decoded, 0) == 0);
        FUNC0(src == pat + sizeof(pat));
        FUNC0(decoded.largest_acknowledged == 0x34);
        FUNC0(decoded.num_gaps == 2);
        FUNC0(decoded.ack_block_lengths[0] == 1);
        FUNC0(decoded.gaps[0] == 2);
        FUNC0(decoded.ack_block_lengths[1] == 3);
        FUNC0(decoded.gaps[1] == 4);
        FUNC0(decoded.ack_block_lengths[2] == 5);
        FUNC0(decoded.smallest_acknowledged == 0x34 - 1 - 2 - 3 - 4 - 5 + 1);
    }

    { /* Bogus ACK Frame larger than the internal buffer */
        uint8_t pat[1024], *end = pat;
        const uint8_t *src = pat;
        int i, range_sum;
        quicly_ack_frame_t decoded;
        end = FUNC2(end, 0xFA00);
        end = FUNC2(end, 0);
        end = FUNC2(end, QUICLY_ACK_MAX_GAPS + 30); // with excess ranges
        end = FUNC2(end, 8);
        for (i = 0; i < QUICLY_ACK_MAX_GAPS + 30; ++i) {
            end = FUNC2(end, i); // gap
            end = FUNC2(end, i % 10); // ack-range
        }

        FUNC0(FUNC1(&src, end, &decoded, 0) == 0);
        FUNC0(decoded.largest_acknowledged == 0xFA00);
        FUNC0(decoded.ack_delay == 0);
        FUNC0(decoded.num_gaps == QUICLY_ACK_MAX_GAPS);
        FUNC0(decoded.ack_block_lengths[0] == 8 + 1); // first ack-range
        range_sum = decoded.ack_block_lengths[0];
        for (i = 0; i < decoded.num_gaps; ++i) {
            FUNC0(decoded.gaps[i] == i + 1);
            FUNC0(decoded.ack_block_lengths[i + 1] == (i % 10) + 1);
            range_sum += decoded.gaps[i] + decoded.ack_block_lengths[i + 1];
        }
        FUNC0(src == end); // decoded the entire frame
        FUNC0(decoded.smallest_acknowledged == 0xFA00 - range_sum + 1);
    }

    FUNC3("underflow", test_ack_decode_underflow);
}