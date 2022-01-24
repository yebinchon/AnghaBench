#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ int64_t ;
struct TYPE_11__ {int /*<<< orphan*/ * oid; scalar_t__* mode; } ;
typedef  TYPE_1__ git_index_reuc_entry ;
struct TYPE_13__ {scalar_t__ _alloc_size; } ;
struct TYPE_12__ {TYPE_6__ reuc; } ;
typedef  TYPE_2__ git_index ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ UINT32_MAX ; 
 scalar_t__ FUNC1 (scalar_t__*,char const*,size_t,char const**,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char const*) ; 
 scalar_t__ FUNC3 (TYPE_6__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_6__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int FUNC7 (char*) ; 
 int FUNC8 (char const*,size_t) ; 
 int /*<<< orphan*/  reuc_cmp ; 
 TYPE_1__* FUNC9 (char const*) ; 

__attribute__((used)) static int FUNC10(git_index *index, const char *buffer, size_t size)
{
	const char *endptr;
	size_t len;
	int i;

	/* If called multiple times, the vector might already be initialized */
	if (index->reuc._alloc_size == 0 &&
		FUNC3(&index->reuc, 16, reuc_cmp) < 0)
		return -1;

	while (size) {
		git_index_reuc_entry *lost;

		len = FUNC8(buffer, size) + 1;
		if (size <= len)
			return FUNC7("reading reuc entries");

		lost = FUNC9(buffer);
		FUNC0(lost);

		size -= len;
		buffer += len;

		/* read 3 ASCII octal numbers for stage entries */
		for (i = 0; i < 3; i++) {
			int64_t tmp;

			if (FUNC1(&tmp, buffer, size, &endptr, 8) < 0 ||
				!endptr || endptr == buffer || *endptr ||
				tmp < 0 || tmp > UINT32_MAX) {
				FUNC6(lost);
				return FUNC7("reading reuc entry stage");
			}

			lost->mode[i] = (uint32_t)tmp;

			len = (endptr + 1) - buffer;
			if (size <= len) {
				FUNC6(lost);
				return FUNC7("reading reuc entry stage");
			}

			size -= len;
			buffer += len;
		}

		/* read up to 3 OIDs for stage entries */
		for (i = 0; i < 3; i++) {
			if (!lost->mode[i])
				continue;
			if (size < 20) {
				FUNC6(lost);
				return FUNC7("reading reuc entry oid");
			}

			FUNC2(&lost->oid[i], (const unsigned char *) buffer);
			size -= 20;
			buffer += 20;
		}

		/* entry was read successfully - insert into reuc vector */
		if (FUNC4(&index->reuc, lost) < 0)
			return -1;
	}

	/* entries are guaranteed to be sorted on-disk */
	FUNC5(&index->reuc, true);

	return 0;
}