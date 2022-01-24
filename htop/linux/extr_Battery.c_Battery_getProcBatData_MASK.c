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
 unsigned long FUNC0 (char*,int,int) ; 

__attribute__((used)) static double FUNC1() {
   const unsigned long int totalFull = FUNC0("info", 3, 4);
   if (totalFull == 0)
      return 0;

   const unsigned long int totalRemain = FUNC0("state", 5, 3);
   if (totalRemain == 0)
      return 0;

   return totalRemain * 100.0 / (double) totalFull;
}