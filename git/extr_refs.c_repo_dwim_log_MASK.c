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
struct strbuf {char const* buf; } ;
struct repository {int dummy; } ;
struct ref_store {int dummy; } ;
struct object_id {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RESOLVE_REF_READING ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct ref_store* FUNC1 (struct repository*) ; 
 int /*<<< orphan*/  FUNC2 (struct object_id*,struct object_id*) ; 
 char** ref_rev_parse_rules ; 
 scalar_t__ FUNC3 (struct ref_store*,char const*) ; 
 char* FUNC4 (struct ref_store*,char const*,int /*<<< orphan*/ ,struct object_id*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,char const*,int,char const*) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*) ; 
 scalar_t__ FUNC8 (char const*,char*) ; 
 char* FUNC9 (struct repository*,char const**,int*) ; 
 int /*<<< orphan*/  warn_ambiguous_refs ; 
 char* FUNC10 (char const*) ; 

int FUNC11(struct repository *r, const char *str, int len,
		  struct object_id *oid, char **log)
{
	struct ref_store *refs = FUNC1(r);
	char *last_branch = FUNC9(r, &str, &len);
	const char **p;
	int logs_found = 0;
	struct strbuf path = STRBUF_INIT;

	*log = NULL;
	for (p = ref_rev_parse_rules; *p; p++) {
		struct object_id hash;
		const char *ref, *it;

		FUNC7(&path);
		FUNC5(&path, *p, len, str);
		ref = FUNC4(refs, path.buf,
					      RESOLVE_REF_READING,
					      &hash, NULL);
		if (!ref)
			continue;
		if (FUNC3(refs, path.buf))
			it = path.buf;
		else if (FUNC8(ref, path.buf) &&
			 FUNC3(refs, ref))
			it = ref;
		else
			continue;
		if (!logs_found++) {
			*log = FUNC10(it);
			FUNC2(oid, &hash);
		}
		if (!warn_ambiguous_refs)
			break;
	}
	FUNC6(&path);
	FUNC0(last_branch);
	return logs_found;
}