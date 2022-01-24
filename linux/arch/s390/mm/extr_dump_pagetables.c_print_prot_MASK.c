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
struct seq_file {int dummy; } ;

/* Variables and functions */
 unsigned int _PAGE_INVALID ; 
 unsigned int _PAGE_NOEXEC ; 
 unsigned int _PAGE_PROTECT ; 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*) ; 

__attribute__((used)) static void FUNC2(struct seq_file *m, unsigned int pr, int level)
{
	static const char * const level_name[] =
		{ "ASCE", "PGD", "PUD", "PMD", "PTE" };

	FUNC0(m, "%s ", level_name[level]);
	if (pr & _PAGE_INVALID) {
		FUNC0(m, "I\n");
		return;
	}
	FUNC1(m, (pr & _PAGE_PROTECT) ? "RO " : "RW ");
	FUNC1(m, (pr & _PAGE_NOEXEC) ? "NX\n" : "X\n");
}