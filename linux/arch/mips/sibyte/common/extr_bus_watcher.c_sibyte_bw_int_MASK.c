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
struct bw_stats_struct {unsigned long l2_err; unsigned long memio_err; int /*<<< orphan*/  bus_error; int /*<<< orphan*/  mem_bad_d; int /*<<< orphan*/  mem_cor_d; int /*<<< orphan*/  l2_bad_t; int /*<<< orphan*/  l2_cor_t; int /*<<< orphan*/  l2_bad_d; int /*<<< orphan*/  l2_cor_d; scalar_t__ status_printed; void* status; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  A_BUS_L2_ERRORS ; 
 int /*<<< orphan*/  A_BUS_MEM_IO_ERRORS ; 
 int /*<<< orphan*/  A_SCD_BUS_ERR_STATUS ; 
 int /*<<< orphan*/  A_SCD_TRACE_CFG ; 
 int /*<<< orphan*/  A_SCD_TRACE_READ ; 
 scalar_t__ FUNC0 (unsigned long) ; 
 scalar_t__ FUNC1 (unsigned long) ; 
 scalar_t__ FUNC2 (unsigned long) ; 
 scalar_t__ FUNC3 (unsigned long) ; 
 scalar_t__ FUNC4 (unsigned long) ; 
 scalar_t__ FUNC5 (unsigned long) ; 
 scalar_t__ FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  M_SCD_TRACE_CFG_FREEZE ; 
 int /*<<< orphan*/  M_SCD_TRACE_CFG_RESET ; 
 int /*<<< orphan*/  M_SCD_TRACE_CFG_START ; 
 int /*<<< orphan*/  M_SCD_TRACE_CFG_START_READ ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 void* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,long long) ; 

__attribute__((used)) static irqreturn_t FUNC12(int irq, void *data)
{
	struct bw_stats_struct *stats = data;
	unsigned long cntr;
#ifdef CONFIG_SIBYTE_BW_TRACE
	int i;
#endif

#ifdef CONFIG_SIBYTE_BW_TRACE
	csr_out32(M_SCD_TRACE_CFG_FREEZE, IOADDR(A_SCD_TRACE_CFG));
	csr_out32(M_SCD_TRACE_CFG_START_READ, IOADDR(A_SCD_TRACE_CFG));

	for (i=0; i<256*6; i++)
		printk("%016llx\n",
		       (long long)__raw_readq(IOADDR(A_SCD_TRACE_READ)));

	csr_out32(M_SCD_TRACE_CFG_RESET, IOADDR(A_SCD_TRACE_CFG));
	csr_out32(M_SCD_TRACE_CFG_START, IOADDR(A_SCD_TRACE_CFG));
#endif

	/* Destructive read, clears register and interrupt */
	stats->status = FUNC9(FUNC7(A_SCD_BUS_ERR_STATUS));
	stats->status_printed = 0;

	stats->l2_err = cntr = FUNC9(FUNC7(A_BUS_L2_ERRORS));
	stats->l2_cor_d += FUNC2(cntr);
	stats->l2_bad_d += FUNC0(cntr);
	stats->l2_cor_t += FUNC3(cntr);
	stats->l2_bad_t += FUNC1(cntr);
	FUNC10(0, FUNC7(A_BUS_L2_ERRORS));

	stats->memio_err = cntr = FUNC9(FUNC7(A_BUS_MEM_IO_ERRORS));
	stats->mem_cor_d += FUNC6(cntr);
	stats->mem_bad_d += FUNC5(cntr);
	stats->bus_error += FUNC4(cntr);
	FUNC10(0, FUNC7(A_BUS_MEM_IO_ERRORS));

	return IRQ_HANDLED;
}