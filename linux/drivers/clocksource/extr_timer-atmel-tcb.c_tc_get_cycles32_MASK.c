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
typedef  int /*<<< orphan*/  u64 ;
struct clocksource {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CV ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ tcaddr ; 

__attribute__((used)) static u64 FUNC2(struct clocksource *cs)
{
	return FUNC1(tcaddr + FUNC0(0, CV));
}