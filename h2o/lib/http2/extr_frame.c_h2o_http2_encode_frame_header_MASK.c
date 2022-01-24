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
typedef  void* uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 void** FUNC1 (void**,int /*<<< orphan*/ ) ; 
 void** FUNC2 (void**,int /*<<< orphan*/ ) ; 

uint8_t *FUNC3(uint8_t *dst, size_t length, uint8_t type, uint8_t flags, int32_t stream_id)
{
    if (length > 0xffffff)
        FUNC0("invalid length");

    dst = FUNC1(dst, (uint32_t)length);
    *dst++ = type;
    *dst++ = flags;
    dst = FUNC2(dst, stream_id);

    return dst;
}