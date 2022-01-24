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
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/  mrb_bool ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (char) ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC1 (char*) ; 

__attribute__((used)) static mrb_bool
FUNC2(char **sp, uint16_t *n)
{
  char *p;
  int i;

  if (*sp == NULL || **sp == '\0') {
    return FALSE;
  }

  for (p = *sp; *p != '\0' && FUNC0(*p); p++) ;

  if (p != *sp && (i = FUNC1(*sp)) >= 0) {
    *n = (uint16_t)i;
    *sp = p;
    return TRUE;
  }
  return FALSE;
}