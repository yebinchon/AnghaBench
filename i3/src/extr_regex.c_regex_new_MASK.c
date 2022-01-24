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
struct regex {int /*<<< orphan*/  regex; int /*<<< orphan*/  extra; int /*<<< orphan*/  pattern; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int PCRE_UCP ; 
 int PCRE_UTF8 ; 
 int /*<<< orphan*/  FUNC1 (char const*,int,int*,char const**,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const**) ; 
 int /*<<< orphan*/  FUNC3 (struct regex*) ; 
 struct regex* FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 

struct regex *FUNC6(const char *pattern) {
    const char *error;
    int errorcode, offset;

    struct regex *re = FUNC4(1, sizeof(struct regex));
    re->pattern = FUNC5(pattern);
    int options = PCRE_UTF8;
    /* We use PCRE_UCP so that \B, \b, \D, \d, \S, \s, \W, \w and some POSIX
     * character classes play nicely with Unicode */
    options |= PCRE_UCP;
    while (!(re->regex = FUNC1(pattern, options, &errorcode, &error, &offset, NULL))) {
        /* If the error is that PCRE was not compiled with UTF-8 support we
         * disable it and try again */
        if (errorcode == 32) {
            options &= ~PCRE_UTF8;
            continue;
        }
        FUNC0("PCRE regular expression compilation failed at %d: %s\n",
             offset, error);
        FUNC3(re);
        return NULL;
    }
    re->extra = FUNC2(re->regex, 0, &error);
    /* If an error happened, we print the error message, but continue.
     * Studying the regular expression leads to faster matching, but it’s not
     * absolutely necessary. */
    if (error) {
        FUNC0("PCRE regular expression studying failed: %s\n", error);
    }
    return re;
}