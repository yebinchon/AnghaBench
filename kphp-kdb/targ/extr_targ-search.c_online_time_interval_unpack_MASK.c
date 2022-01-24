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
 int* IBuff ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int IL ; 
 int ocur_now ; 
 int FUNC1 (int*,int,int) ; 

__attribute__((used)) static inline int FUNC2 (int ts1, int ts2) {
  IL = (ts1 > ocur_now) ? 0 : FUNC1 (IBuff, ts1, ts2);
  FUNC0 (0, IL - 1);
  IBuff[IL] = ~(-1 << 31);
  return IL;
}