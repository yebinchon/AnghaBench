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
typedef  enum slb_index { ____Placeholder_slb_index } slb_index ;

/* Variables and functions */
 unsigned long SLB_ESID_V ; 
 unsigned long FUNC0 (int) ; 

__attribute__((used)) static inline unsigned long FUNC1(unsigned long ea, int ssize,
					 enum slb_index index)
{
	return (ea & FUNC0(ssize)) | SLB_ESID_V | index;
}