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
struct test_sglist {int /*<<< orphan*/  bufs; } ;

/* Variables and functions */
 void FUNC0 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(struct test_sglist *tsgl)
{
	return FUNC0(tsgl->bufs, 1 /* two pages per buffer */);
}