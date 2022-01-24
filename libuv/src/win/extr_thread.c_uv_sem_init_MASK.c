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
typedef  int /*<<< orphan*/ * uv_sem_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  INT_MAX ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(uv_sem_t* sem, unsigned int value) {
  *sem = FUNC0(NULL, value, INT_MAX, NULL);
  if (*sem == NULL)
    return FUNC2(FUNC1());
  else
    return 0;
}