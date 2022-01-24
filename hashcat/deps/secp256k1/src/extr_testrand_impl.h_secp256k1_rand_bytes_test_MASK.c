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
typedef  size_t uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,int /*<<< orphan*/ ,size_t) ; 
 int FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(unsigned char *bytes, size_t len) {
    size_t bits = 0;
    FUNC0(bytes, 0, len);
    while (bits < len * 8) {
        int now;
        uint32_t val;
        now = 1 + (FUNC1(6) * FUNC1(5) + 16) / 31;
        val = FUNC1(1);
        while (now > 0 && bits < len * 8) {
            bytes[bits / 8] |= val << (bits % 8);
            now--;
            bits++;
        }
    }
}