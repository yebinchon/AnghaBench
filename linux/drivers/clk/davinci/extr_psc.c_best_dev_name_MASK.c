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
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 char const* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const**) ; 

__attribute__((used)) static inline const char *FUNC2(struct device *dev)
{
	const char *compatible;

	if (!FUNC1(dev->of_node, "compatible", &compatible))
		return compatible;

	return FUNC0(dev);
}