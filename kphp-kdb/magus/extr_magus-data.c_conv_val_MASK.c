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
 float FUNC0 (double) ; 
 float FUNC1 (float) ; 

__attribute__((used)) inline static float FUNC2 (float val) {
  if (val < 1.0) {
    val = 1.0;
  }
  if (val > 1e2) {
    val = 1e2;
  }
  return val;
  return FUNC1 (val);
  return FUNC0 (1.0 + 3 * val);
}