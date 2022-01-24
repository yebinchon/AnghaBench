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
struct range_set {int /*<<< orphan*/  nr; int /*<<< orphan*/  ranges; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct range_set*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct range_set *dst, struct range_set *src)
{
	FUNC1(dst, src->nr);
	FUNC0(dst->ranges, src->ranges, src->nr);
	dst->nr = src->nr;
}