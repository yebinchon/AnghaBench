#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int i1; int chg1; int i2; int chg2; int /*<<< orphan*/  chg0; int /*<<< orphan*/  i0; } ;
typedef  TYPE_1__ xdmerge_t ;
typedef  int /*<<< orphan*/  xdfenv_t ;

/* Variables and functions */
 int DEFAULT_CONFLICT_MARKER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (size_t*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (size_t*,size_t,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (size_t*,size_t,int,int,int,int) ; 
 int XDL_MERGE_DIFF3 ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char,int) ; 
 scalar_t__ FUNC6 (char const*) ; 
 scalar_t__ FUNC7 (size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,char*) ; 
 scalar_t__ FUNC8 (size_t*,int /*<<< orphan*/ *,int,int,int,int,char*) ; 

__attribute__((used)) static int FUNC9(size_t *out, xdfenv_t *xe1, const char *name1,
			      xdfenv_t *xe2, const char *name2,
			      const char *name3,
			      size_t size, int i, int style,
			      xdmerge_t *m, char *dest, int marker_size)
{
	int marker1_size = (name1 ? (int)FUNC6(name1) + 1 : 0);
	int marker2_size = (name2 ? (int)FUNC6(name2) + 1 : 0);
	int marker3_size = (name3 ? (int)FUNC6(name3) + 1 : 0);
	int needs_cr = FUNC3(xe1, xe2, m);
	size_t copied;

	*out = 0;

	if (marker_size <= 0)
		marker_size = DEFAULT_CONFLICT_MARKER_SIZE;

	/* Before conflicting part */
	if (FUNC8(&copied, xe1, i, m->i1 - i, 0, 0,
			      dest ? dest + size : NULL) < 0)
		return -1;

	FUNC0(&size, size, copied);

	if (!dest) {
		FUNC2(&size, size, marker_size, 1, needs_cr,  marker1_size);
	} else {
		FUNC5(dest + size, '<', marker_size);
		size += marker_size;
		if (marker1_size) {
			dest[size] = ' ';
			FUNC4(dest + size + 1, name1, marker1_size - 1);
			size += marker1_size;
		}
		if (needs_cr)
			dest[size++] = '\r';
		dest[size++] = '\n';
	}

	/* Postimage from side #1 */
	if (FUNC8(&copied, xe1, m->i1, m->chg1, needs_cr, 1,
			      dest ? dest + size : NULL) < 0)
		return -1;

	FUNC0(&size, size, copied);

	if (style == XDL_MERGE_DIFF3) {
		/* Shared preimage */
		if (!dest) {
			FUNC2(&size, size, marker_size, 1, needs_cr, marker3_size);
		} else {
			FUNC5(dest + size, '|', marker_size);
			size += marker_size;
			if (marker3_size) {
				dest[size] = ' ';
				FUNC4(dest + size + 1, name3, marker3_size - 1);
				size += marker3_size;
			}
			if (needs_cr)
				dest[size++] = '\r';
			dest[size++] = '\n';
		}

		if (FUNC7(&copied, xe1, m->i0, m->chg0, needs_cr, 1,
				      dest ? dest + size : NULL) < 0)
			return -1;
		FUNC0(&size, size, copied);
	}

	if (!dest) {
		FUNC1(&size, size, marker_size, 1, needs_cr);
	} else {
		FUNC5(dest + size, '=', marker_size);
		size += marker_size;
		if (needs_cr)
			dest[size++] = '\r';
		dest[size++] = '\n';
	}

	/* Postimage from side #2 */

	if (FUNC8(&copied, xe2, m->i2, m->chg2, needs_cr, 1,
			      dest ? dest + size : NULL) < 0)
		return -1;
	FUNC0(&size, size, copied);

	if (!dest) {
		FUNC2(&size, size, marker_size, 1, needs_cr, marker2_size);
	} else {
		FUNC5(dest + size, '>', marker_size);
		size += marker_size;
		if (marker2_size) {
			dest[size] = ' ';
			FUNC4(dest + size + 1, name2, marker2_size - 1);
			size += marker2_size;
		}
		if (needs_cr)
			dest[size++] = '\r';
		dest[size++] = '\n';
	}

	*out = size;
	return 0;
}