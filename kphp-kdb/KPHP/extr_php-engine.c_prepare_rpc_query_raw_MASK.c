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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int*,int) ; 

void FUNC2 (int packet_id, int *q, int qn) {
  FUNC0 (sizeof (int) == 4);
  q[0] = qn;
  FUNC0 ((qn & 3) == 0);
  qn >>= 2;
  FUNC0 (qn >= 5);

  q[1] = packet_id;
  q[qn - 1] = (int)FUNC1 (q, q[0] - 4);
}