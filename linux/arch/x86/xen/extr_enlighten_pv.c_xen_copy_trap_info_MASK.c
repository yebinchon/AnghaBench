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
struct trap_info {int dummy; } ;
struct desc_ptr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  idt_desc ; 
 struct desc_ptr* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct desc_ptr const*,struct trap_info*) ; 

void FUNC2(struct trap_info *traps)
{
	const struct desc_ptr *desc = FUNC0(&idt_desc);

	FUNC1(desc, traps);
}