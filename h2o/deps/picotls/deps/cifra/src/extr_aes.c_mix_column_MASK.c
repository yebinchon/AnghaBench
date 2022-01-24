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
typedef  int uint32_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int,int) ; 

__attribute__((used)) static uint32_t FUNC2(uint32_t x)
{
  uint32_t x2 = FUNC0(x);
  return x2 ^ FUNC1(x ^ x2, 24) ^ FUNC1(x, 16) ^ FUNC1(x, 8);
}