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
 int /*<<< orphan*/  fid_id ; 
 int /*<<< orphan*/  fids ; 
 int fids_size ; 
 int* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

int FUNC2 (int x) {
  int *y = FUNC0 (&fid_id, x);
  if (*y == 0) {
    *y = fids_size + 1;
    FUNC1 (fids, x);
  }
  return (*y) - 1;
}