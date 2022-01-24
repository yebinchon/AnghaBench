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
typedef  scalar_t__ vptr ;
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
 scalar_t__ MAX_ALBUMS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int* todel ; 
 scalar_t__ todel_n ; 

void FUNC4 (int *i, vptr *_d) {
  data *d = (data *) *_d;
  if (FUNC2 (d)) {
    FUNC0 (todel_n < MAX_ALBUMS);
    FUNC1 (d);
    FUNC3 (d, sizeof (data));
    todel[todel_n++] = *i;
  }
}