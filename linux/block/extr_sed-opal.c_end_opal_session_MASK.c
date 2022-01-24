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
struct opal_dev {int /*<<< orphan*/  comid; } ;

/* Variables and functions */
 int /*<<< orphan*/  OPAL_ENDOFSESSION ; 
 int /*<<< orphan*/  FUNC0 (int*,struct opal_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct opal_dev*) ; 
 int /*<<< orphan*/  end_session_cont ; 
 int FUNC2 (struct opal_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct opal_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct opal_dev *dev, void *data)
{
	int err = 0;

	FUNC1(dev);
	FUNC3(dev, dev->comid);
	FUNC0(&err, dev, OPAL_ENDOFSESSION);

	if (err < 0)
		return err;

	return FUNC2(dev, end_session_cont);
}