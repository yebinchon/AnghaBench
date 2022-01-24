#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int* q_prev; int /*<<< orphan*/ * std_val; } ;
typedef  TYPE_1__ event ;

/* Variables and functions */
 int FN ; 
 int* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int* FUNC1 (int /*<<< orphan*/ *,long long) ; 
 int /*<<< orphan*/ * q_st_int ; 
 int /*<<< orphan*/ * q_st_ll ; 
 scalar_t__* std_t ; 

void FUNC2 (event *e, int id) {
  int i;
  for (i = 1; i < FN; i += 1 + std_t[i]) {
    if (std_t[i]) {
      int *t = FUNC1 (&q_st_ll[i], *(long long *)&e->std_val[i]);
      e->q_prev[i] = *t;
      *t = id;
    } else {
      int *t = FUNC0 (&q_st_int[i], e->std_val[i]);
      e->q_prev[i] = *t;
      *t = id;
    }
  }
}