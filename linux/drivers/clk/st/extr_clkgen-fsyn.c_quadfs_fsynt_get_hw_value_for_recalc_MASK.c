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
struct stm_fs {int nsdiv; void* sdiv; void* pe; void* mdiv; } ;
struct st_clk_quadfs_fsynth {size_t chan; int nsdiv; void* sdiv; void* pe; void* md; TYPE_1__* data; } ;
struct TYPE_2__ {scalar_t__ nsdiv_present; } ;

/* Variables and functions */
 void* FUNC0 (struct st_clk_quadfs_fsynth*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * mdiv ; 
 int /*<<< orphan*/ * nsdiv ; 
 int /*<<< orphan*/ * pe ; 
 int /*<<< orphan*/ * sdiv ; 

__attribute__((used)) static int FUNC1(struct st_clk_quadfs_fsynth *fs,
		struct stm_fs *params)
{
	/*
	 * Get the initial hardware values for recalc_rate
	 */
	params->mdiv	= FUNC0(fs, mdiv[fs->chan]);
	params->pe	= FUNC0(fs, pe[fs->chan]);
	params->sdiv	= FUNC0(fs, sdiv[fs->chan]);

	if (fs->data->nsdiv_present)
		params->nsdiv = FUNC0(fs, nsdiv[fs->chan]);
	else
		params->nsdiv = 1;

	/*
	 * If All are NULL then assume no clock rate is programmed.
	 */
	if (!params->mdiv && !params->pe && !params->sdiv)
		return 1;

	fs->md = params->mdiv;
	fs->pe = params->pe;
	fs->sdiv = params->sdiv;
	fs->nsdiv = params->nsdiv;

	return 0;
}