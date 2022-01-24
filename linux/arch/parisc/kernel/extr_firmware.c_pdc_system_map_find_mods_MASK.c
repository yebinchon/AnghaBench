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
struct pdc_system_map_mod_info {int /*<<< orphan*/  mod_addr; } ;
struct pdc_module_path {int /*<<< orphan*/  mod_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  PDC_FIND_MODULE ; 
 int /*<<< orphan*/  PDC_SYSTEM_MAP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC4 (struct pdc_system_map_mod_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  pdc_lock ; 
 int /*<<< orphan*/  pdc_result ; 
 int /*<<< orphan*/  pdc_result2 ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC7(struct pdc_system_map_mod_info *pdc_mod_info,
			     struct pdc_module_path *mod_path, long mod_index)
{
	int retval;
	unsigned long flags;

	FUNC5(&pdc_lock, flags);
	retval = FUNC3(PDC_SYSTEM_MAP, PDC_FIND_MODULE, FUNC0(pdc_result), 
			      FUNC0(pdc_result2), mod_index);
	FUNC1(pdc_result);
	FUNC4(pdc_mod_info, pdc_result, sizeof(*pdc_mod_info));
	FUNC4(mod_path, pdc_result2, sizeof(*mod_path));
	FUNC6(&pdc_lock, flags);

	pdc_mod_info->mod_addr = FUNC2(pdc_mod_info->mod_addr);
	return retval;
}