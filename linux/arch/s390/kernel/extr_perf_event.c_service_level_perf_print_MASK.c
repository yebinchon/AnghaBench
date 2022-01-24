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
struct service_level {int dummy; } ;
struct seq_file {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*) ; 

__attribute__((used)) static void FUNC4(struct seq_file *m,
				     struct service_level *sl)
{
	if (FUNC0())
		FUNC2(m);
	if (FUNC1())
		FUNC3(m);
}