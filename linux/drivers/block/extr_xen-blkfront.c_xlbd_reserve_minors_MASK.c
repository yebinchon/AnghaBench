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

/* Variables and functions */
 int BITS_PER_LONG ; 
 int FUNC0 (unsigned int) ; 
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (unsigned long*,unsigned int,unsigned int) ; 
 unsigned int FUNC2 (unsigned long*,unsigned int,unsigned int) ; 
 unsigned long* FUNC3 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long*,unsigned long*,int) ; 
 int /*<<< orphan*/  minor_lock ; 
 unsigned long* minors ; 
 unsigned int nr_minors ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(unsigned int minor, unsigned int nr)
{
	unsigned int end = minor + nr;
	int rc;

	if (end > nr_minors) {
		unsigned long *bitmap, *old;

		bitmap = FUNC3(FUNC0(end), sizeof(*bitmap),
				 GFP_KERNEL);
		if (bitmap == NULL)
			return -ENOMEM;

		FUNC6(&minor_lock);
		if (end > nr_minors) {
			old = minors;
			FUNC5(bitmap, minors,
			       FUNC0(nr_minors) * sizeof(*bitmap));
			minors = bitmap;
			nr_minors = FUNC0(end) * BITS_PER_LONG;
		} else
			old = bitmap;
		FUNC7(&minor_lock);
		FUNC4(old);
	}

	FUNC6(&minor_lock);
	if (FUNC2(minors, end, minor) >= end) {
		FUNC1(minors, minor, nr);
		rc = 0;
	} else
		rc = -EBUSY;
	FUNC7(&minor_lock);

	return rc;
}