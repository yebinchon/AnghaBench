#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int cha_b_ctrl; char cha_b_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__ atari_scc ; 

__attribute__((used)) static inline void FUNC1(char c)
{
	do {
		FUNC0();
	} while (!(atari_scc.cha_b_ctrl & 0x04)); /* wait for tx buf empty */
	FUNC0();
	atari_scc.cha_b_data = c;
}