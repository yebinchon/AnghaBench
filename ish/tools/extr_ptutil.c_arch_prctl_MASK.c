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
 int /*<<< orphan*/  SYS_arch_prctl ; 
 int FUNC0 (int /*<<< orphan*/ ,int,unsigned long) ; 

__attribute__((used)) static int FUNC1(int code, unsigned long arg) {
    return FUNC0(SYS_arch_prctl, code, arg);
}