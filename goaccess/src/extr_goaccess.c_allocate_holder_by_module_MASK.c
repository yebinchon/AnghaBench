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
typedef  int /*<<< orphan*/  GRawData ;
typedef  size_t GModule ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ holder ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * module_sort ; 
 int /*<<< orphan*/ * FUNC2 (size_t) ; 

__attribute__((used)) static void
FUNC3 (GModule module)
{
  GRawData *raw_data;

  /* extract data from the corresponding hash table */
  raw_data = FUNC2 (module);
  if (!raw_data) {
    FUNC0 (("raw data is NULL for module: %d.\n", module));
    return;
  }

  FUNC1 (raw_data, holder + module, module, module_sort[module]);
}