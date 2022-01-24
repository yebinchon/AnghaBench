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
 int /*<<< orphan*/  FUNC0 (char*,unsigned int) ; 
 unsigned int FUNC1 () ; 
 unsigned int FUNC2 () ; 
 unsigned int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct seq_file*,char*) ; 

__attribute__((used)) static int FUNC6(struct seq_file *m, void *v)
{
	unsigned int segcfg;
	char str[42];

	FUNC5(m, "Segment   Virtual    Size   Access Mode   Physical   Caching   EU\n");
	FUNC5(m, "-------   -------    ----   -----------   --------   -------   --\n");

	segcfg = FUNC1();
	FUNC0(str, segcfg);
	FUNC4(m, "   0      e0000000   512M      %s", str);

	segcfg >>= 16;
	FUNC0(str, segcfg);
	FUNC4(m, "   1      c0000000   512M      %s", str);

	segcfg = FUNC2();
	FUNC0(str, segcfg);
	FUNC4(m, "   2      a0000000   512M      %s", str);

	segcfg >>= 16;
	FUNC0(str, segcfg);
	FUNC4(m, "   3      80000000   512M      %s", str);

	segcfg = FUNC3();
	FUNC0(str, segcfg);
	FUNC4(m, "   4      40000000    1G       %s", str);

	segcfg >>= 16;
	FUNC0(str, segcfg);
	FUNC4(m, "   5      00000000    1G       %s\n", str);

	return 0;
}