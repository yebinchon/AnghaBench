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
typedef  unsigned long u8 ;
typedef  int u32 ;
struct reset_controller_dev {int dummy; } ;
struct hisi_reset_controller {int /*<<< orphan*/  lock; scalar_t__ membase; } ;

/* Variables and functions */
 int FUNC0 (unsigned long) ; 
 unsigned long HISI_RESET_BIT_MASK ; 
 unsigned long HISI_RESET_OFFSET_MASK ; 
 unsigned long HISI_RESET_OFFSET_SHIFT ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct hisi_reset_controller* FUNC4 (struct reset_controller_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct reset_controller_dev *rcdev,
			      unsigned long id)
{
	struct hisi_reset_controller *rstc = FUNC4(rcdev);
	unsigned long flags;
	u32 offset, reg;
	u8 bit;

	offset = (id & HISI_RESET_OFFSET_MASK) >> HISI_RESET_OFFSET_SHIFT;
	bit = id & HISI_RESET_BIT_MASK;

	FUNC2(&rstc->lock, flags);

	reg = FUNC1(rstc->membase + offset);
	FUNC5(reg | FUNC0(bit), rstc->membase + offset);

	FUNC3(&rstc->lock, flags);

	return 0;
}