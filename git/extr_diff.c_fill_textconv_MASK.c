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
struct userdiff_driver {scalar_t__ textconv_cache; int /*<<< orphan*/  textconv; } ;
struct repository {int dummy; } ;
struct diff_filespec {char* data; size_t size; int /*<<< orphan*/  oid; scalar_t__ oid_valid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct diff_filespec*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (struct repository*,struct diff_filespec*,int /*<<< orphan*/ ) ; 
 char* FUNC4 (scalar_t__,int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 char* FUNC7 (struct repository*,int /*<<< orphan*/ ,struct diff_filespec*,size_t*) ; 

size_t FUNC8(struct repository *r,
		     struct userdiff_driver *driver,
		     struct diff_filespec *df,
		     char **outbuf)
{
	size_t size;

	if (!driver) {
		if (!FUNC1(df)) {
			*outbuf = "";
			return 0;
		}
		if (FUNC3(r, df, 0))
			FUNC2("unable to read files to diff");
		*outbuf = df->data;
		return df->size;
	}

	if (!driver->textconv)
		FUNC0("fill_textconv called with non-textconv driver");

	if (driver->textconv_cache && df->oid_valid) {
		*outbuf = FUNC4(driver->textconv_cache,
					  &df->oid,
					  &size);
		if (*outbuf)
			return size;
	}

	*outbuf = FUNC7(r, driver->textconv, df, &size);
	if (!*outbuf)
		FUNC2("unable to read files to diff");

	if (driver->textconv_cache && df->oid_valid) {
		/* ignore errors, as we might be in a readonly repository */
		FUNC5(driver->textconv_cache, &df->oid, *outbuf,
				size);
		/*
		 * we could save up changes and flush them all at the end,
		 * but we would need an extra call after all diffing is done.
		 * Since generating a cache entry is the slow path anyway,
		 * this extra overhead probably isn't a big deal.
		 */
		FUNC6(driver->textconv_cache);
	}

	return size;
}