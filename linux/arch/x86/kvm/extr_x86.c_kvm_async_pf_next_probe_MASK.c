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
typedef  int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  ASYNC_PF_PER_VCPU ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline u32 FUNC1(u32 key)
{
	return (key + 1) & (FUNC0(ASYNC_PF_PER_VCPU) - 1);
}