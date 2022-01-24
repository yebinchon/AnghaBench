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
struct pmc_data {unsigned int ncore; unsigned int nsystem; unsigned int nperiph; unsigned int ngck; void* ghws; void* phws; void* shws; void* chws; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (unsigned int,int,int /*<<< orphan*/ ) ; 
 struct pmc_data* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pmc_data*) ; 

struct pmc_data *FUNC3(unsigned int ncore, unsigned int nsystem,
				   unsigned int nperiph, unsigned int ngck)
{
	struct pmc_data *pmc_data = FUNC1(sizeof(*pmc_data), GFP_KERNEL);

	if (!pmc_data)
		return NULL;

	pmc_data->ncore = ncore;
	pmc_data->chws = FUNC0(ncore, sizeof(struct clk_hw *), GFP_KERNEL);
	if (!pmc_data->chws)
		goto err;

	pmc_data->nsystem = nsystem;
	pmc_data->shws = FUNC0(nsystem, sizeof(struct clk_hw *), GFP_KERNEL);
	if (!pmc_data->shws)
		goto err;

	pmc_data->nperiph = nperiph;
	pmc_data->phws = FUNC0(nperiph, sizeof(struct clk_hw *), GFP_KERNEL);
	if (!pmc_data->phws)
		goto err;

	pmc_data->ngck = ngck;
	pmc_data->ghws = FUNC0(ngck, sizeof(struct clk_hw *), GFP_KERNEL);
	if (!pmc_data->ghws)
		goto err;

	return pmc_data;

err:
	FUNC2(pmc_data);

	return NULL;
}