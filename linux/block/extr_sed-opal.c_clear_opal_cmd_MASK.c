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
struct opal_header {int dummy; } ;
struct opal_dev {int pos; int /*<<< orphan*/  cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  IO_BUFFER_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct opal_dev *dev)
{
	dev->pos = sizeof(struct opal_header);
	FUNC0(dev->cmd, 0, IO_BUFFER_LENGTH);
}