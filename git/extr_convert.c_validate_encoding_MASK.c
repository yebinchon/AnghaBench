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
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*,char const*,...) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*,char const*) ; 
 int FUNC3 (char const*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char const*,char const*,size_t) ; 
 scalar_t__ FUNC6 (char const*,char const*,size_t) ; 
 scalar_t__ FUNC7 (char const*,char*) ; 
 scalar_t__ FUNC8 (char const*,char*,char const**) ; 
 int FUNC9 (char*) ; 
 char* FUNC10 (char const*) ; 

__attribute__((used)) static int FUNC11(const char *path, const char *enc,
		      const char *data, size_t len, int die_on_error)
{
	/* We only check for UTF here as UTF?? can be an alias for UTF-?? */
	if (FUNC7(enc, "UTF")) {
		/*
		 * Check for detectable errors in UTF encodings
		 */
		if (FUNC5(enc, data, len)) {
			const char *error_msg = FUNC0(
				"BOM is prohibited in '%s' if encoded as %s");
			/*
			 * This advice is shown for UTF-??BE and UTF-??LE encodings.
			 * We cut off the last two characters of the encoding name
			 * to generate the encoding name suitable for BOMs.
			 */
			const char *advise_msg = FUNC0(
				"The file '%s' contains a byte order "
				"mark (BOM). Please use UTF-%s as "
				"working-tree-encoding.");
			const char *stripped = NULL;
			char *upper = FUNC10(enc);
			upper[FUNC9(upper)-2] = '\0';
			if (FUNC8(upper, "UTF", &stripped))
				FUNC8(stripped, "-", &stripped);
			FUNC1(advise_msg, path, stripped);
			FUNC4(upper);
			if (die_on_error)
				FUNC2(error_msg, path, enc);
			else {
				return FUNC3(error_msg, path, enc);
			}

		} else if (FUNC6(enc, data, len)) {
			const char *error_msg = FUNC0(
				"BOM is required in '%s' if encoded as %s");
			const char *advise_msg = FUNC0(
				"The file '%s' is missing a byte order "
				"mark (BOM). Please use UTF-%sBE or UTF-%sLE "
				"(depending on the byte order) as "
				"working-tree-encoding.");
			const char *stripped = NULL;
			char *upper = FUNC10(enc);
			if (FUNC8(upper, "UTF", &stripped))
				FUNC8(stripped, "-", &stripped);
			FUNC1(advise_msg, path, stripped, stripped);
			FUNC4(upper);
			if (die_on_error)
				FUNC2(error_msg, path, enc);
			else {
				return FUNC3(error_msg, path, enc);
			}
		}

	}
	return 0;
}