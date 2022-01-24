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
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/  const) ; 

__attribute__((used)) static void FUNC1(const void* ptr, size_t length)
{
    const BYTE* p = (const BYTE*)ptr;
    size_t idx;
    for (idx=length-1; idx<length; idx--)    /* intentional underflow to negative to detect end */
        FUNC0("%02x", p[idx]);
}