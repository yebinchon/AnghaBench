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
 int /*<<< orphan*/ * LEDMeterMode_digits ; 
 int /*<<< orphan*/  FUNC0 (int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(int x, int y, int n) {
   for (int i = 0; i < 3; i++)
      FUNC0(y+i, x, LEDMeterMode_digits[i * 10 + n]);
}