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
struct idt77252_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SAR_REG_STAT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static __inline__ int
FUNC1(struct idt77252_dev *card, int queue)
{
	return (FUNC0(SAR_REG_STAT) >> (16 + (queue << 2))) == 0x0f;
}