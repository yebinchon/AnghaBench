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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  text_mutex ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  tp_vec ; 
 scalar_t__ tp_vec_nr ; 

void FUNC3(void)
{
	if (!tp_vec_nr)
		return;

	FUNC0(&text_mutex);
	FUNC2(tp_vec, tp_vec_nr);
	FUNC1(&text_mutex);

	tp_vec_nr = 0;
}