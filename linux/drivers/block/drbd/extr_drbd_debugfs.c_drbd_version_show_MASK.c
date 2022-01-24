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
 int /*<<< orphan*/  API_VERSION ; 
 int /*<<< orphan*/  PRO_VERSION_MAX ; 
 int /*<<< orphan*/  PRO_VERSION_MIN ; 
 int /*<<< orphan*/  REL_VERSION ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct seq_file *m, void *ignored)
{
	FUNC1(m, "# %s\n", FUNC0());
	FUNC1(m, "VERSION=%s\n", REL_VERSION);
	FUNC1(m, "API_VERSION=%u\n", API_VERSION);
	FUNC1(m, "PRO_VERSION_MIN=%u\n", PRO_VERSION_MIN);
	FUNC1(m, "PRO_VERSION_MAX=%u\n", PRO_VERSION_MAX);
	return 0;
}