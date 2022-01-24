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
typedef  size_t GModule ;

/* Variables and functions */
 size_t TOTAL_MODULES ; 
 scalar_t__ FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int* module_list ; 

int
FUNC2 (void)
{
  GModule module;
  int i;

  /* init - terminating with -1 */
  for (module = 0; module < TOTAL_MODULES; ++module)
    module_list[module] = -1;

  for (i = 0, module = 0; module < TOTAL_MODULES; ++module) {
    if (!FUNC1 (module) || FUNC0 (module)) {
      module_list[i++] = module;
    }
  }

  return module_list[0] > -1 ? module_list[0] : 0;
}