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
struct regex {int /*<<< orphan*/  pattern; int /*<<< orphan*/  extra; int /*<<< orphan*/  regex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char const*) ; 
 int PCRE_ERROR_NOMATCH ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 

bool FUNC4(struct regex *regex, const char *input) {
    int rc;

    /* We use strlen() because pcre_exec() expects the length of the input
     * string in bytes */
    if ((rc = FUNC2(regex->regex, regex->extra, input, FUNC3(input), 0, 0, NULL, 0)) == 0) {
        FUNC1("Regular expression \"%s\" matches \"%s\"\n",
            regex->pattern, input);
        return true;
    }

    if (rc == PCRE_ERROR_NOMATCH) {
        FUNC1("Regular expression \"%s\" does not match \"%s\"\n",
            regex->pattern, input);
        return false;
    }

    FUNC0("PCRE error %d while trying to use regular expression \"%s\" on input \"%s\", see pcreapi(3)\n",
         rc, regex->pattern, input);
    return false;
}