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
 int CACHE_CLR ; 
 int CACHE_INV ; 
 int DATA_CACHE ; 
 int INS_CACHE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 

void FUNC1(void)
{
	FUNC0(INS_CACHE|DATA_CACHE|CACHE_CLR|CACHE_INV, 0);
}