#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct seq_file {int dummy; } ;
struct TYPE_4__ {scalar_t__ dvs; int /*<<< orphan*/  arm_divisor; int /*<<< orphan*/  p_divisor; int /*<<< orphan*/  h_divisor; } ;
struct TYPE_3__ {int /*<<< orphan*/  armclk; int /*<<< orphan*/  hclk; int /*<<< orphan*/  hclk_tns; int /*<<< orphan*/  fclk; } ;
struct s3c_cpufreq_config {int /*<<< orphan*/  lock_pll; TYPE_2__ divs; int /*<<< orphan*/  max; TYPE_1__ freq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct s3c_cpufreq_config* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct seq_file *seq, void *p)
{
	struct s3c_cpufreq_config *cfg;

	cfg = FUNC1();
	if (!cfg) {
		FUNC2(seq, "no configuration registered\n");
		return 0;
	}

	FUNC2(seq, "  FCLK %ld Hz\n", cfg->freq.fclk);
	FUNC2(seq, "  HCLK %ld Hz (%lu.%lu ns)\n",
		   cfg->freq.hclk, FUNC0(cfg->freq.hclk_tns));
	FUNC2(seq, "  PCLK %ld Hz\n", cfg->freq.hclk);
	FUNC2(seq, "ARMCLK %ld Hz\n", cfg->freq.armclk);
	FUNC2(seq, "\n");

	FUNC3(seq, &cfg->max);

	FUNC2(seq, "Divisors: P=%d, H=%d, A=%d, dvs=%s\n",
		   cfg->divs.h_divisor, cfg->divs.p_divisor,
		   cfg->divs.arm_divisor, cfg->divs.dvs ? "on" : "off");
	FUNC2(seq, "\n");

	FUNC2(seq, "lock_pll=%u\n", cfg->lock_pll);

	return 0;
}