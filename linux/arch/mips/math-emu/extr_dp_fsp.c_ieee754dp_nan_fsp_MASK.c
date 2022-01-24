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
typedef  union ieee754dp {int dummy; } ieee754dp ;
typedef  int u64 ;

/* Variables and functions */
 scalar_t__ DP_EBIAS ; 
 scalar_t__ DP_EMAX ; 
 int DP_FBITS ; 
 int SP_FBITS ; 
 union ieee754dp FUNC0 (int,scalar_t__,int) ; 

__attribute__((used)) static inline union ieee754dp FUNC1(int xs, u64 xm)
{
	return FUNC0(xs, DP_EMAX + 1 + DP_EBIAS,
		       xm << (DP_FBITS - SP_FBITS));
}