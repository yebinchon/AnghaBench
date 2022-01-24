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
struct airq_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQIO_PCD ; 
 int /*<<< orphan*/  IRQIO_PCF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void FUNC3(struct airq_struct *airq, bool floating)
{
	if (floating) {
		FUNC0(IRQIO_PCF);
		FUNC2();
	} else {
		FUNC0(IRQIO_PCD);
		FUNC1(true);
	}
}