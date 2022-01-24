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
struct property_entry {size_t length; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENODATA ; 
 int /*<<< orphan*/  EOVERFLOW ; 
 void const* FUNC0 (int /*<<< orphan*/ ) ; 
 struct property_entry* FUNC1 (struct property_entry const*,char const*) ; 
 void* FUNC2 (struct property_entry const*) ; 

__attribute__((used)) static const void *FUNC3(const struct property_entry *props,
				       const char *propname, size_t length)
{
	const struct property_entry *prop;
	const void *pointer;

	prop = FUNC1(props, propname);
	if (!prop)
		return FUNC0(-EINVAL);
	pointer = FUNC2(prop);
	if (!pointer)
		return FUNC0(-ENODATA);
	if (length > prop->length)
		return FUNC0(-EOVERFLOW);
	return pointer;
}