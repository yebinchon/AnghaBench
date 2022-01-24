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
struct ref {struct ref* next; int /*<<< orphan*/  old_oid; } ;
struct discovery {char* buf; int len; } ;
struct TYPE_4__ {int hexsz; } ;
struct TYPE_3__ {int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct ref* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ref*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct ref*) ; 
 int /*<<< orphan*/  FUNC6 (struct ref*,struct ref*) ; 
 TYPE_2__* the_hash_algo ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_1__ url ; 

__attribute__((used)) static struct ref *FUNC8(struct discovery *heads)
{
	char *data, *start, *mid;
	char *ref_name;
	int i = 0;

	struct ref *refs = NULL;
	struct ref *ref = NULL;
	struct ref *last_ref = NULL;

	data = heads->buf;
	start = NULL;
	mid = data;
	while (i < heads->len) {
		if (!start) {
			start = &data[i];
		}
		if (data[i] == '\t')
			mid = &data[i];
		if (data[i] == '\n') {
			if (mid - start != the_hash_algo->hexsz)
				FUNC2(FUNC0("%sinfo/refs not valid: is this a git repository?"),
				    FUNC7(url.buf));
			data[i] = 0;
			ref_name = mid + 1;
			ref = FUNC1(ref_name);
			FUNC4(start, &ref->old_oid);
			if (!refs)
				refs = ref;
			if (last_ref)
				last_ref->next = ref;
			last_ref = ref;
			start = NULL;
		}
		i++;
	}

	ref = FUNC1("HEAD");
	if (!FUNC5(url.buf, ref) &&
	    !FUNC6(ref, refs)) {
		ref->next = refs;
		refs = ref;
	} else {
		FUNC3(ref);
	}

	return refs;
}