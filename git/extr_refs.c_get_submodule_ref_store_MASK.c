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
struct strbuf {int /*<<< orphan*/  buf; } ;
struct ref_store {int dummy; } ;

/* Variables and functions */
 int REF_STORE_ODB ; 
 int REF_STORE_READ ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char const) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*) ; 
 struct ref_store* FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 struct ref_store* FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,struct ref_store*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*) ; 
 size_t FUNC8 (char const*) ; 
 int /*<<< orphan*/  submodule_ref_stores ; 
 scalar_t__ FUNC9 (struct strbuf*,char const*) ; 
 char* FUNC10 (char const*,size_t) ; 

struct ref_store *FUNC11(const char *submodule)
{
	struct strbuf submodule_sb = STRBUF_INIT;
	struct ref_store *refs;
	char *to_free = NULL;
	size_t len;

	if (!submodule)
		return NULL;

	len = FUNC8(submodule);
	while (len && FUNC1(submodule[len - 1]))
		len--;
	if (!len)
		return NULL;

	if (submodule[len])
		/* We need to strip off one or more trailing slashes */
		submodule = to_free = FUNC10(submodule, len);

	refs = FUNC3(&submodule_ref_stores, submodule);
	if (refs)
		goto done;

	FUNC6(&submodule_sb, submodule);
	if (!FUNC2(&submodule_sb))
		goto done;

	if (FUNC9(&submodule_sb, submodule))
		goto done;

	/* assume that add_submodule_odb() has been called */
	refs = FUNC4(submodule_sb.buf,
			      REF_STORE_READ | REF_STORE_ODB);
	FUNC5(&submodule_ref_stores, "submodule",
			       refs, submodule);

done:
	FUNC7(&submodule_sb);
	FUNC0(to_free);

	return refs;
}