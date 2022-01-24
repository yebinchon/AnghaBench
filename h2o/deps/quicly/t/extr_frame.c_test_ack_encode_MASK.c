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
typedef  int /*<<< orphan*/  const uint8_t ;
typedef  int /*<<< orphan*/  quicly_ranges_t ;
struct TYPE_3__ {int ack_delay; int num_gaps; int largest_acknowledged; int* ack_block_lengths; int* gaps; } ;
typedef  TYPE_1__ quicly_ack_frame_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const**,int /*<<< orphan*/  const*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const* FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(void)
{
    quicly_ranges_t ranges;
    uint8_t buf[256], *end;
    const uint8_t *src;
    quicly_ack_frame_t decoded;

    FUNC5(&ranges);
    FUNC3(&ranges, 0x12, 0x14);

    /* encode */
    end = FUNC2(buf, buf + sizeof(buf), &ranges, 63);
    FUNC0(end - buf == 5);
    /* decode */
    src = buf + 1;
    FUNC0(FUNC1(&src, end, &decoded, 0) == 0);
    FUNC0(src == end);
    FUNC0(decoded.ack_delay == 63);
    FUNC0(decoded.num_gaps == 0);
    FUNC0(decoded.largest_acknowledged == 0x13);
    FUNC0(decoded.ack_block_lengths[0] == 2);

    FUNC3(&ranges, 0x10, 0x11);

    /* encode */
    end = FUNC2(buf, buf + sizeof(buf), &ranges, 63);
    FUNC0(end - buf == 7);
    /* decode */
    src = buf + 1;
    FUNC0(FUNC1(&src, end, &decoded, 0) == 0);
    FUNC0(src == end);
    FUNC0(decoded.ack_delay == 63);
    FUNC0(decoded.num_gaps == 1);
    FUNC0(decoded.largest_acknowledged == 0x13);
    FUNC0(decoded.ack_block_lengths[0] == 2);
    FUNC0(decoded.gaps[0] == 1);
    FUNC0(decoded.ack_block_lengths[1] == 1);

    FUNC4(&ranges);
}