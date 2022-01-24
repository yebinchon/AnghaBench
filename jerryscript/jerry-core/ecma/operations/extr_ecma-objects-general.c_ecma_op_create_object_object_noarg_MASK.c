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
typedef  int /*<<< orphan*/  ecma_object_t ;

/* Variables and functions */
 int /*<<< orphan*/  ECMA_BUILTIN_ID_OBJECT_PROTOTYPE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 

ecma_object_t *
FUNC2 (void)
{
  ecma_object_t *object_prototype_p = FUNC0 (ECMA_BUILTIN_ID_OBJECT_PROTOTYPE);

  /* 3., 4., 6., 7. */
  return FUNC1 (object_prototype_p);
}