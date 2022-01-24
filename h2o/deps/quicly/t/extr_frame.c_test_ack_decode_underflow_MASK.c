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
struct TYPE_3__ {int largest_acknowledged; int num_gaps; int* ack_block_lengths; scalar_t__ smallest_acknowledged; } ;
typedef  TYPE_1__ quicly_ack_frame_t ;
typedef  int /*<<< orphan*/  pat ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int const**,int const*,TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void)
{
    quicly_ack_frame_t decoded;

    { /* ack pn=0 */
        const uint8_t pat[] = {0, 0, 0, 0}, *src = pat;
        FUNC0(FUNC1(&src, pat + sizeof(pat), &decoded, 0) == 0);
        FUNC0(src == pat + sizeof(pat));
        FUNC0(decoded.largest_acknowledged == 0);
        FUNC0(decoded.num_gaps == 0);
        FUNC0(decoded.ack_block_lengths[0] == 1);
        FUNC0(decoded.smallest_acknowledged == 0);
    }
    { /* underflow in first block length */
        const uint8_t pat[] = {0, 0, 0, 1}, *src = pat;
        FUNC0(FUNC1(&src, pat + sizeof(pat), &decoded, 0) != 0);
    }

    { /* frame with gap going down to pn=0 */
        const uint8_t pat[] = {2, 0, 1, 0, 0, 0}, *src = pat;
        FUNC0(FUNC1(&src, pat + sizeof(pat), &decoded, 0) == 0);
        FUNC0(src == pat + sizeof(pat));
        FUNC0(decoded.largest_acknowledged == 2);
        FUNC0(decoded.num_gaps == 1);
        FUNC0(decoded.ack_block_lengths[0] == 1);
        FUNC0(decoded.ack_block_lengths[1] == 1);
        FUNC0(decoded.smallest_acknowledged == 0);
    }

    { /* additional block length going negative */
        const uint8_t pat[] = {2, 0, 1, 0, 0, 1}, *src = pat;
        FUNC0(FUNC1(&src, pat + sizeof(pat), &decoded, 0) != 0);
    }
    { /* gap going negative */
        const uint8_t pat[] = {2, 0, 1, 0, 3, 0}, *src = pat;
        FUNC0(FUNC1(&src, pat + sizeof(pat), &decoded, 0) != 0);
    }
}