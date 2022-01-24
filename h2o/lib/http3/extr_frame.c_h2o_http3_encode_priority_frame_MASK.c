#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_6__ {scalar_t__ type; int /*<<< orphan*/  id_; } ;
struct TYPE_5__ {scalar_t__ type; int /*<<< orphan*/  id_; } ;
struct TYPE_7__ {int exclusive; int /*<<< orphan*/  weight_m1; TYPE_2__ dependency; TYPE_1__ prioritized; } ;
typedef  TYPE_3__ h2o_http3_priority_frame_t ;

/* Variables and functions */
 int /*<<< orphan*/  H2O_HTTP3_FRAME_TYPE_PRIORITY ; 
 scalar_t__ H2O_HTTP3_PRIORITY_ELEMENT_TYPE_ROOT ; 
 int H2O_HTTP3_PRIORITY_FRAME_CAPACITY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int* FUNC1 (int*,int /*<<< orphan*/ ) ; 

uint8_t *FUNC2(uint8_t *dst, const h2o_http3_priority_frame_t *frame)
{
    FUNC0(frame->prioritized.type != H2O_HTTP3_PRIORITY_ELEMENT_TYPE_ROOT);
    uint8_t *base = dst;

    *dst++ = H2O_HTTP3_FRAME_TYPE_PRIORITY;
    ++dst; /* skip length; determined laterwards */
    *dst++ = ((uint8_t)frame->prioritized.type << 6) | ((uint8_t)frame->dependency.type << 4) | (frame->exclusive << 3);
    dst = FUNC1(dst, frame->prioritized.id_);
    if (frame->dependency.type != H2O_HTTP3_PRIORITY_ELEMENT_TYPE_ROOT)
        dst = FUNC1(dst, frame->dependency.id_);
    *dst++ = frame->weight_m1;
    base[1] = dst - (base + 2);

    FUNC0(dst - base < H2O_HTTP3_PRIORITY_FRAME_CAPACITY);
    return dst;
}