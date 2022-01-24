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
struct reset_data {int /*<<< orphan*/  lock; int /*<<< orphan*/  reg; scalar_t__ offset; } ;
struct reset_controller_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 struct reset_data* FUNC1 (struct reset_controller_dev*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct reset_controller_dev *rcdev,
				      unsigned long id)
{
	struct reset_data *data = FUNC1(rcdev);
	unsigned long flags;
	u32 reg;

	FUNC3(data->lock, flags);

	reg = FUNC2(data->reg);
	FUNC5(reg | FUNC0(data->offset + id), data->reg);

	FUNC4(data->lock, flags);

	return 0;
}