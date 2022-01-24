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
typedef  union ieee754sp {int dummy; } ieee754sp ;
typedef  int u64 ;

/* Variables and functions */
 int DP_FBITS ; 
 scalar_t__ SP_EBIAS ; 
 scalar_t__ SP_EMAX ; 
 int SP_FBITS ; 
 union ieee754sp FUNC0 (int,scalar_t__,int) ; 

__attribute__((used)) static inline union ieee754sp FUNC1(int xs, u64 xm)
{
	return FUNC0(xs, SP_EMAX + 1 + SP_EBIAS,
		       xm >> (DP_FBITS - SP_FBITS));
}