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
struct serdev_device {int dummy; } ;
struct h5 {int /*<<< orphan*/  serdev_hu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct h5* FUNC1 (struct serdev_device*) ; 

__attribute__((used)) static void FUNC2(struct serdev_device *serdev)
{
	struct h5 *h5 = FUNC1(serdev);

	FUNC0(&h5->serdev_hu);
}