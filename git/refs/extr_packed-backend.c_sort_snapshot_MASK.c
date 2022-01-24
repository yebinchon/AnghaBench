#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snapshot_record {char const* start; int len; } ;
struct snapshot {char* start; char* eof; char* buf; TYPE_1__* refs; } ;
struct TYPE_4__ {int hexsz; } ;
struct TYPE_3__ {int /*<<< orphan*/  path; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snapshot_record*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct snapshot_record*,size_t,scalar_t__ (*) (struct snapshot_record*,struct snapshot_record*)) ; 
 int /*<<< orphan*/  FUNC3 (struct snapshot*) ; 
 scalar_t__ FUNC4 (struct snapshot_record*,struct snapshot_record*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct snapshot_record*) ; 
 char* FUNC7 (char const*,char,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,int) ; 
 TYPE_2__* the_hash_algo ; 
 char* FUNC9 (size_t) ; 

__attribute__((used)) static void FUNC10(struct snapshot *snapshot)
{
	struct snapshot_record *records = NULL;
	size_t alloc = 0, nr = 0;
	int sorted = 1;
	const char *pos, *eof, *eol;
	size_t len, i;
	char *new_buffer, *dst;

	pos = snapshot->start;
	eof = snapshot->eof;

	if (pos == eof)
		return;

	len = eof - pos;

	/*
	 * Initialize records based on a crude estimate of the number
	 * of references in the file (we'll grow it below if needed):
	 */
	FUNC0(records, len / 80 + 20, alloc);

	while (pos < eof) {
		eol = FUNC7(pos, '\n', eof - pos);
		if (!eol)
			/* The safety check should prevent this. */
			FUNC1("unterminated line found in packed-refs");
		if (eol - pos < the_hash_algo->hexsz + 2)
			FUNC5(snapshot->refs->path,
					 pos, eof - pos);
		eol++;
		if (eol < eof && *eol == '^') {
			/*
			 * Keep any peeled line together with its
			 * reference:
			 */
			const char *peeled_start = eol;

			eol = FUNC7(peeled_start, '\n', eof - peeled_start);
			if (!eol)
				/* The safety check should prevent this. */
				FUNC1("unterminated peeled line found in packed-refs");
			eol++;
		}

		FUNC0(records, nr + 1, alloc);
		records[nr].start = pos;
		records[nr].len = eol - pos;
		nr++;

		if (sorted &&
		    nr > 1 &&
		    FUNC4(&records[nr - 2],
					   &records[nr - 1]) >= 0)
			sorted = 0;

		pos = eol;
	}

	if (sorted)
		goto cleanup;

	/* We need to sort the memory. First we sort the records array: */
	FUNC2(records, nr, cmp_packed_ref_records);

	/*
	 * Allocate a new chunk of memory, and copy the old memory to
	 * the new in the order indicated by `records` (not bothering
	 * with the header line):
	 */
	new_buffer = FUNC9(len);
	for (dst = new_buffer, i = 0; i < nr; i++) {
		FUNC8(dst, records[i].start, records[i].len);
		dst += records[i].len;
	}

	/*
	 * Now munmap the old buffer and use the sorted buffer in its
	 * place:
	 */
	FUNC3(snapshot);
	snapshot->buf = snapshot->start = new_buffer;
	snapshot->eof = new_buffer + len;

cleanup:
	FUNC6(records);
}