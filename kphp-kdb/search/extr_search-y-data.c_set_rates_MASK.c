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
 int /*<<< orphan*/  FUNC0 (long long,int,int) ; 

__attribute__((used)) static int FUNC1 (long long item_id, int rate, int rate2) {
  if (!FUNC0 (item_id, 0, rate)) { return 0;}
  if (!FUNC0 (item_id, 1, rate2)) { return 0;}
  return 1;
}