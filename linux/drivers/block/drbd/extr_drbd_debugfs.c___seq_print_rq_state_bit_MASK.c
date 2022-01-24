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
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char const*) ; 

__attribute__((used)) static void FUNC2(struct seq_file *m,
	bool is_set, char *sep, const char *set_name, const char *unset_name)
{
	if (is_set && set_name) {
		FUNC0(m, *sep);
		FUNC1(m, set_name);
		*sep = '|';
	} else if (!is_set && unset_name) {
		FUNC0(m, *sep);
		FUNC1(m, unset_name);
		*sep = '|';
	}
}