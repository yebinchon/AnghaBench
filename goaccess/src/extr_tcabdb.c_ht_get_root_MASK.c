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
typedef  int /*<<< orphan*/  GModule ;

/* Variables and functions */
 int /*<<< orphan*/  MTRC_ROOT ; 
 int /*<<< orphan*/  MTRC_ROOTMAP ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (void*,int) ; 
 char* FUNC2 (void*,int) ; 

char *
FUNC3 (GModule module, int key)
{
  int root_key = 0;
  void *hashroot = FUNC0 (module, MTRC_ROOT);
  void *hashrootmap = FUNC0 (module, MTRC_ROOTMAP);

  if (!hashroot || !hashrootmap)
    return NULL;

  /* not found */
  if ((root_key = FUNC1 (hashroot, key)) == 0)
    return NULL;

  return FUNC2 (hashrootmap, root_key);
}