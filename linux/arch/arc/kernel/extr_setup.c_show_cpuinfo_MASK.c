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
struct device {int dummy; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HZ ; 
 scalar_t__ FUNC0 (struct clk*) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int,char*,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int,char*,int /*<<< orphan*/ ) ; 
 char* FUNC4 (int,char*,int /*<<< orphan*/ ) ; 
 char* FUNC5 (int,char*,int /*<<< orphan*/ ) ; 
 char* FUNC6 () ; 
 struct clk* FUNC7 (struct device*,int /*<<< orphan*/ *) ; 
 unsigned long FUNC8 (struct clk*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (unsigned long) ; 
 struct device* FUNC11 (int) ; 
 int loops_per_jiffy ; 
 int FUNC12 (void*) ; 
 int /*<<< orphan*/  FUNC13 (struct seq_file*,char*,...) ; 

__attribute__((used)) static int FUNC14(struct seq_file *m, void *v)
{
	char *str;
	int cpu_id = FUNC12(v);
	struct device *cpu_dev = FUNC11(cpu_id);
	struct clk *cpu_clk;
	unsigned long freq = 0;

	if (!FUNC9(cpu_id)) {
		FUNC13(m, "processor [%d]\t: Offline\n", cpu_id);
		goto done;
	}

	str = (char *)FUNC1(GFP_KERNEL);
	if (!str)
		goto done;

	FUNC13(m, FUNC3(cpu_id, str, PAGE_SIZE));

	cpu_clk = FUNC7(cpu_dev, NULL);
	if (FUNC0(cpu_clk)) {
		FUNC13(m, "CPU speed \t: Cannot get clock for processor [%d]\n",
			   cpu_id);
	} else {
		freq = FUNC8(cpu_clk);
	}
	if (freq)
		FUNC13(m, "CPU speed\t: %lu.%02lu Mhz\n",
			   freq / 1000000, (freq / 10000) % 100);

	FUNC13(m, "Bogo MIPS\t: %lu.%02lu\n",
		   loops_per_jiffy / (500000 / HZ),
		   (loops_per_jiffy / (5000 / HZ)) % 100);

	FUNC13(m, FUNC5(cpu_id, str, PAGE_SIZE));
	FUNC13(m, FUNC2(cpu_id, str, PAGE_SIZE));
	FUNC13(m, FUNC4(cpu_id, str, PAGE_SIZE));
	FUNC13(m, FUNC6());

	FUNC10((unsigned long)str);
done:
	FUNC13(m, "\n");

	return 0;
}