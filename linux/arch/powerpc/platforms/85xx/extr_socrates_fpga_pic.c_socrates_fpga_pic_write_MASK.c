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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ socrates_fpga_pic_iobase ; 

__attribute__((used)) static inline void FUNC1(int reg, uint32_t val)
{
	FUNC0(socrates_fpga_pic_iobase + reg, val);
}