#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct stat {int /*<<< orphan*/  st_size; } ;
struct TYPE_3__ {size_t size; int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ mmfile_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (char*,char const*) ; 
 int FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,size_t,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char const*,struct stat*) ; 
 int /*<<< orphan*/  FUNC6 (size_t) ; 
 size_t FUNC7 (int /*<<< orphan*/ ) ; 

int FUNC8(mmfile_t *ptr, const char *filename)
{
	struct stat st;
	FILE *f;
	size_t sz;

	if (FUNC5(filename, &st))
		return FUNC1("Could not stat %s", filename);
	if ((f = FUNC3(filename, "rb")) == NULL)
		return FUNC1("Could not open %s", filename);
	sz = FUNC7(st.st_size);
	ptr->ptr = FUNC6(sz ? sz : 1);
	if (sz && FUNC4(ptr->ptr, sz, 1, f) != 1) {
		FUNC2(f);
		return FUNC0("Could not read %s", filename);
	}
	FUNC2(f);
	ptr->size = sz;
	return 0;
}