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
struct opal_dev {int /*<<< orphan*/  parsed; int /*<<< orphan*/  resp; int /*<<< orphan*/  pos; int /*<<< orphan*/  cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  IO_BUFFER_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct opal_dev *dev)
{
	int error;

	FUNC1(dev->cmd, dev->pos);

	error = FUNC2(dev->resp, IO_BUFFER_LENGTH, &dev->parsed);
	if (error) {
		FUNC0("Couldn't parse response.\n");
		return error;
	}

	return FUNC3(&dev->parsed);
}