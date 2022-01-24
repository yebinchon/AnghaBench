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
 int* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  secrets ; 

int FUNC2 (int id) {
  int *v = FUNC0 (&secrets, id);
  int nv = FUNC1();
  if (nv == *v) {
    nv += 13;
  }
  return *v = nv;
}