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
 int FUNC0 (int,int) ; 

__attribute__((used)) static inline uint32_t FUNC1(uint32_t x)
{
	return FUNC0(x, 6) ^ FUNC0(x, 11) ^ FUNC0(x, 25);
}