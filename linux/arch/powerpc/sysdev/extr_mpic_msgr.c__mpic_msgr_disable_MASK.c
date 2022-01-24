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
struct mpic_msgr {int num; } ;

/* Variables and functions */
 int FUNC0 (struct mpic_msgr*) ; 
 int /*<<< orphan*/  FUNC1 (struct mpic_msgr*,int) ; 

__attribute__((used)) static inline void FUNC2(struct mpic_msgr *msgr)
{
	u32 mer = FUNC0(msgr);

	FUNC1(msgr, mer & ~(1 << msgr->num));
}