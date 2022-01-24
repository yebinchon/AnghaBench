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
struct repository_format {int /*<<< orphan*/  partial_clone; int /*<<< orphan*/  work_tree; int /*<<< orphan*/  unknown_extensions; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct repository_format*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC3(struct repository_format *format)
{
	FUNC2(&format->unknown_extensions, 0);
	FUNC0(format->work_tree);
	FUNC0(format->partial_clone);
	FUNC1(format);
}