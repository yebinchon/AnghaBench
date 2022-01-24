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
 scalar_t__ FUNC0 (char*,size_t) ; 
 int /*<<< orphan*/  SYS_getrandom ; 
 scalar_t__ kCCSuccess ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,size_t,int /*<<< orphan*/ ) ; 

int FUNC2(char *buf, size_t len) {
#ifdef __APPLE__
    return CCRandomGenerateBytes(buf, len) != kCCSuccess;
#else
    return FUNC1(SYS_getrandom, buf, len, 0) < 0;
#endif
}