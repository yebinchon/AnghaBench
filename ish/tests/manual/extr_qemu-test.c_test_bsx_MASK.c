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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  bsfl ; 
 int /*<<< orphan*/  bsfq ; 
 int /*<<< orphan*/  bsfw ; 
 int /*<<< orphan*/  bsrl ; 
 int /*<<< orphan*/  bsrq ; 
 int /*<<< orphan*/  bsrw ; 

void FUNC1(void)
{
    FUNC0(bsrw, "w", 0);
    FUNC0(bsrw, "w", 0x12340128);
    FUNC0(bsfw, "w", 0);
    FUNC0(bsfw, "w", 0x12340128);
    FUNC0(bsrl, "k", 0);
    FUNC0(bsrl, "k", 0x00340128);
    FUNC0(bsfl, "k", 0);
    FUNC0(bsfl, "k", 0x00340128);
#if defined(__x86_64__)
    FUNC0(bsrq, "", 0);
    FUNC0(bsrq, "", 0x003401281234);
    FUNC0(bsfq, "", 0);
    FUNC0(bsfq, "", 0x003401281234);
#endif
}