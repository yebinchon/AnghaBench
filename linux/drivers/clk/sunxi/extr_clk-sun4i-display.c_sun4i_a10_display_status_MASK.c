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
struct reset_data {scalar_t__ offset; int /*<<< orphan*/  reg; } ;
struct reset_controller_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 struct reset_data* FUNC1 (struct reset_controller_dev*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct reset_controller_dev *rcdev,
				    unsigned long id)
{
	struct reset_data *data = FUNC1(rcdev);

	return !(FUNC2(data->reg) & FUNC0(data->offset + id));
}