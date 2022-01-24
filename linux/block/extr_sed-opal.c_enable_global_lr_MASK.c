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
typedef  int /*<<< orphan*/  u8 ;
struct opal_user_lr_setup {int /*<<< orphan*/  WLE; int /*<<< orphan*/  RLE; } ;
struct opal_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct opal_dev*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static inline int FUNC2(struct opal_dev *dev, u8 *uid,
				   struct opal_user_lr_setup *setup)
{
	int err;

	err = FUNC0(dev, uid, !!setup->RLE, !!setup->WLE,
					0, 0);
	if (err)
		FUNC1("Failed to create enable global lr command\n");

	return err;
}