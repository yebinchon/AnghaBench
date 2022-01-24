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
 int FUNC0 (long long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  stdout ; 

void FUNC2 (long long item_id) {
  int t = FUNC0 (item_id);
  if (t) {
    FUNC1 (stdout, "%d_%d", (int) item_id, (int) t);
  } else {
    FUNC1 (stdout, "%d", (int) item_id);
  }
}