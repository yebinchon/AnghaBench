#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  h2o_buffer_t ;

/* Variables and functions */
 int /*<<< orphan*/  H2O_HTTP2_FRAME_FLAG_ACK ; 
 int /*<<< orphan*/  H2O_HTTP2_FRAME_TYPE_PING ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ **,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 

void FUNC2(h2o_buffer_t **buf, int is_ack, const uint8_t *data)
{
    uint8_t *dst = FUNC0(buf, 8, H2O_HTTP2_FRAME_TYPE_PING, is_ack ? H2O_HTTP2_FRAME_FLAG_ACK : 0, 0);
    FUNC1(dst, data, 8);
    dst += 8;
}