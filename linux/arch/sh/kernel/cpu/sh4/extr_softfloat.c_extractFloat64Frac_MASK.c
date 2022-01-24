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
typedef  int float64 ;
typedef  int bits64 ;

/* Variables and functions */
 int FUNC0 (int) ; 

bits64 FUNC1(float64 a)
{
	return a & FUNC0(0x000FFFFFFFFFFFFF);
}