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
typedef  int /*<<< orphan*/  dword_t ;
typedef  int /*<<< orphan*/  addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  AT_FDCWD_ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

dword_t FUNC1(addr_t target_addr, addr_t link_addr) {
    return FUNC0(target_addr, AT_FDCWD_, link_addr);
}