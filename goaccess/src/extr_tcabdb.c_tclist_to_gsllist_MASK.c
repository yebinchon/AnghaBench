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
typedef  int /*<<< orphan*/  TCLIST ;
typedef  int /*<<< orphan*/  GSLList ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int,int*) ; 

GSLList *
FUNC5 (TCLIST * tclist)
{
  GSLList *list = NULL;
  int i, sz;
  int *val;

  for (i = 0; i < FUNC3 (tclist); ++i) {
    val = (int *) FUNC4 (tclist, i, &sz);
    if (list == NULL)
      list = FUNC1 (FUNC0 (*val));
    else
      list = FUNC2 (list, FUNC0 (*val));
  }

  return list;
}