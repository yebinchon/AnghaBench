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
typedef  scalar_t__ uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

void FUNC1(char *str, uint8_t *vli, unsigned int size) {
    FUNC0("%s ", str);
    for(unsigned i=0; i<size; ++i) {
        FUNC0("%02X ", (unsigned)vli[i]);
    }
    FUNC0("\n");
}