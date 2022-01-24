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
typedef  scalar_t__ time_t ;

/* Variables and functions */
 int TIMESTAMP_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 

uint32_t FUNC1(void)
{
	time_t rawtime;
	FUNC0(&rawtime);
	return (((uint32_t) rawtime) - TIMESTAMP_MAGIC) >> 2;
}