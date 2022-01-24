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
struct property_entry {scalar_t__ is_array; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (void const*) ; 
 int FUNC1 (void const*) ; 
 int /*<<< orphan*/  FUNC2 (char const**,void const*,size_t) ; 
 size_t FUNC3 (size_t,size_t) ; 
 size_t FUNC4 (struct property_entry const*,char const*,int) ; 
 void* FUNC5 (struct property_entry const*,char const*,size_t) ; 
 struct property_entry* FUNC6 (struct property_entry const*,char const*) ; 

__attribute__((used)) static int FUNC7(const struct property_entry *props,
					    const char *propname,
					    const char **strings, size_t nval)
{
	const struct property_entry *prop;
	const void *pointer;
	size_t array_len, length;

	/* Find out the array length. */
	prop = FUNC6(props, propname);
	if (!prop)
		return -EINVAL;

	if (prop->is_array)
		/* Find the length of an array. */
		array_len = FUNC4(props, propname,
							  sizeof(const char *));
	else
		/* The array length for a non-array string property is 1. */
		array_len = 1;

	/* Return how many there are if strings is NULL. */
	if (!strings)
		return array_len;

	array_len = FUNC3(nval, array_len);
	length = array_len * sizeof(*strings);

	pointer = FUNC5(props, propname, length);
	if (FUNC0(pointer))
		return FUNC1(pointer);

	FUNC2(strings, pointer, length);

	return array_len;
}