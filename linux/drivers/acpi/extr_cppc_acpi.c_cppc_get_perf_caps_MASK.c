#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  void* u64 ;
struct cppc_perf_caps {void* nominal_freq; void* lowest_freq; void* lowest_nonlinear_perf; void* guaranteed_perf; void* nominal_perf; void* lowest_perf; void* highest_perf; } ;
struct cppc_pcc_data {int /*<<< orphan*/  pcc_lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  reg; } ;
struct cpc_register_resource {scalar_t__ type; TYPE_1__ cpc_entry; } ;
struct cpc_desc {struct cpc_register_resource* cpc_regs; } ;

/* Variables and functions */
 scalar_t__ ACPI_TYPE_BUFFER ; 
 int /*<<< orphan*/  CMD_READ ; 
 scalar_t__ FUNC0 (struct cpc_register_resource*) ; 
 scalar_t__ FUNC1 (struct cpc_register_resource*) ; 
 int EFAULT ; 
 int EIO ; 
 int ENODEV ; 
 size_t GUARANTEED_PERF ; 
 size_t HIGHEST_PERF ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 size_t LOWEST_FREQ ; 
 size_t LOWEST_PERF ; 
 size_t LOW_NON_LINEAR_PERF ; 
 size_t NOMINAL_FREQ ; 
 size_t NOMINAL_PERF ; 
 int /*<<< orphan*/  cpc_desc_ptr ; 
 int /*<<< orphan*/  FUNC3 (int,struct cpc_register_resource*,void**) ; 
 int /*<<< orphan*/  cpu_pcc_subspace_idx ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct cppc_pcc_data** pcc_data ; 
 struct cpc_desc* FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 scalar_t__ FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(int cpunum, struct cppc_perf_caps *perf_caps)
{
	struct cpc_desc *cpc_desc = FUNC5(cpc_desc_ptr, cpunum);
	struct cpc_register_resource *highest_reg, *lowest_reg,
		*lowest_non_linear_reg, *nominal_reg, *guaranteed_reg,
		*low_freq_reg = NULL, *nom_freq_reg = NULL;
	u64 high, low, guaranteed, nom, min_nonlinear, low_f = 0, nom_f = 0;
	int pcc_ss_id = FUNC5(cpu_pcc_subspace_idx, cpunum);
	struct cppc_pcc_data *pcc_ss_data = NULL;
	int ret = 0, regs_in_pcc = 0;

	if (!cpc_desc) {
		FUNC6("No CPC descriptor for CPU:%d\n", cpunum);
		return -ENODEV;
	}

	highest_reg = &cpc_desc->cpc_regs[HIGHEST_PERF];
	lowest_reg = &cpc_desc->cpc_regs[LOWEST_PERF];
	lowest_non_linear_reg = &cpc_desc->cpc_regs[LOW_NON_LINEAR_PERF];
	nominal_reg = &cpc_desc->cpc_regs[NOMINAL_PERF];
	low_freq_reg = &cpc_desc->cpc_regs[LOWEST_FREQ];
	nom_freq_reg = &cpc_desc->cpc_regs[NOMINAL_FREQ];
	guaranteed_reg = &cpc_desc->cpc_regs[GUARANTEED_PERF];

	/* Are any of the regs PCC ?*/
	if (FUNC0(highest_reg) || FUNC0(lowest_reg) ||
		FUNC0(lowest_non_linear_reg) || FUNC0(nominal_reg) ||
		FUNC0(low_freq_reg) || FUNC0(nom_freq_reg)) {
		if (pcc_ss_id < 0) {
			FUNC6("Invalid pcc_ss_id\n");
			return -ENODEV;
		}
		pcc_ss_data = pcc_data[pcc_ss_id];
		regs_in_pcc = 1;
		FUNC4(&pcc_ss_data->pcc_lock);
		/* Ring doorbell once to update PCC subspace */
		if (FUNC7(pcc_ss_id, CMD_READ) < 0) {
			ret = -EIO;
			goto out_err;
		}
	}

	FUNC3(cpunum, highest_reg, &high);
	perf_caps->highest_perf = high;

	FUNC3(cpunum, lowest_reg, &low);
	perf_caps->lowest_perf = low;

	FUNC3(cpunum, nominal_reg, &nom);
	perf_caps->nominal_perf = nom;

	if (guaranteed_reg->type != ACPI_TYPE_BUFFER  ||
	    FUNC2(&guaranteed_reg->cpc_entry.reg)) {
		perf_caps->guaranteed_perf = 0;
	} else {
		FUNC3(cpunum, guaranteed_reg, &guaranteed);
		perf_caps->guaranteed_perf = guaranteed;
	}

	FUNC3(cpunum, lowest_non_linear_reg, &min_nonlinear);
	perf_caps->lowest_nonlinear_perf = min_nonlinear;

	if (!high || !low || !nom || !min_nonlinear)
		ret = -EFAULT;

	/* Read optional lowest and nominal frequencies if present */
	if (FUNC1(low_freq_reg))
		FUNC3(cpunum, low_freq_reg, &low_f);

	if (FUNC1(nom_freq_reg))
		FUNC3(cpunum, nom_freq_reg, &nom_f);

	perf_caps->lowest_freq = low_f;
	perf_caps->nominal_freq = nom_f;


out_err:
	if (regs_in_pcc)
		FUNC8(&pcc_ss_data->pcc_lock);
	return ret;
}