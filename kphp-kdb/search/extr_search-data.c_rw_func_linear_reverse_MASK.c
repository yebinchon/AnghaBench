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
struct rate_weight {int /*<<< orphan*/  p; } ;
typedef  int /*<<< orphan*/  item_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static double FUNC1 (item_t *I, struct rate_weight *R) {
  int rate = FUNC0 (I, R->p);
  if (rate < 0) { rate = 0; }
  return rate * (1.0 / 2147483647.0);
}