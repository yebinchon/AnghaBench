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
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,long,...) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct seq_file *seq, long v)
{
	/* v is in kB/sec. We don't expect TiByte/sec yet. */
	if (FUNC2(v >= 1000000)) {
		/* cool: > GiByte/s */
		FUNC1(seq, "%ld,", v / 1000000);
		v %= 1000000;
		FUNC1(seq, "%03ld,%03ld", v/1000, v % 1000);
	} else if (FUNC0(v >= 1000))
		FUNC1(seq, "%ld,%03ld", v/1000, v % 1000);
	else
		FUNC1(seq, "%ld", v);
}