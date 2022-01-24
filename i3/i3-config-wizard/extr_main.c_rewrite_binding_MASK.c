#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int n; TYPE_2__* array; } ;
typedef  TYPE_1__ cmdp_token_ptr ;
struct TYPE_6__ {char* name; int /*<<< orphan*/ * identifier; } ;
typedef  TYPE_2__ cmdp_token ;

/* Variables and functions */
 scalar_t__ ERANGE ; 
 size_t INITIAL ; 
 long LONG_MAX ; 
 long LONG_MIN ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC4 (int,int) ; 
 size_t state ; 
 int statelist_idx ; 
 scalar_t__ FUNC5 (char const*,char*) ; 
 int FUNC6 (char const*) ; 
 scalar_t__ FUNC7 (char const*,char*,int) ; 
 long FUNC8 (char const*,char**,int) ; 
 TYPE_1__* tokens ; 

__attribute__((used)) static char *FUNC9(const char *input) {
    state = INITIAL;
    statelist_idx = 1;

    const char *walk = input;
    const size_t len = FUNC6(input);
    int c;
    const cmdp_token *token;
    char *result = NULL;

    /* The "<=" operator is intentional: We also handle the terminating 0-byte
     * explicitly by looking for an 'end' token. */
    while ((size_t)(walk - input) <= len) {
        /* Skip whitespace before every token, newlines are relevant since they
         * separate configuration directives. */
        while ((*walk == ' ' || *walk == '\t') && *walk != '\0')
            walk++;

        //printf("remaining input: %s\n", walk);

        cmdp_token_ptr *ptr = &(tokens[state]);
        for (c = 0; c < ptr->n; c++) {
            token = &(ptr->array[c]);

            /* A literal. */
            if (token->name[0] == '\'') {
                if (FUNC7(walk, token->name + 1, FUNC6(token->name) - 1) == 0) {
                    if (token->identifier != NULL)
                        FUNC3(token->identifier, token->name + 1);
                    walk += FUNC6(token->name) - 1;
                    if ((result = FUNC1(token)) != NULL)
                        return result;
                    break;
                }
                continue;
            }

            if (FUNC5(token->name, "number") == 0) {
                /* Handle numbers. We only accept decimal numbers for now. */
                char *end = NULL;
                errno = 0;
                long int num = FUNC8(walk, &end, 10);
                if ((errno == ERANGE && (num == LONG_MIN || num == LONG_MAX)) ||
                    (errno != 0 && num == 0))
                    continue;

                /* No valid numbers found */
                if (end == walk)
                    continue;

                if (token->identifier != NULL)
                    FUNC2(token->identifier, num);

                /* Set walk to the first non-number character */
                walk = end;
                if ((result = FUNC1(token)) != NULL)
                    return result;
                break;
            }

            if (FUNC5(token->name, "string") == 0 ||
                FUNC5(token->name, "word") == 0) {
                const char *beginning = walk;
                /* Handle quoted strings (or words). */
                if (*walk == '"') {
                    beginning++;
                    walk++;
                    while (*walk != '\0' && (*walk != '"' || *(walk - 1) == '\\'))
                        walk++;
                } else {
                    if (token->name[0] == 's') {
                        while (*walk != '\0' && *walk != '\r' && *walk != '\n')
                            walk++;
                    } else {
                        /* For a word, the delimiters are white space (' ' or
                         * '\t'), closing square bracket (]), comma (,) and
                         * semicolon (;). */
                        while (*walk != ' ' && *walk != '\t' &&
                               *walk != ']' && *walk != ',' &&
                               *walk != ';' && *walk != '\r' &&
                               *walk != '\n' && *walk != '\0')
                            walk++;
                    }
                }
                if (walk != beginning) {
                    char *str = FUNC4(walk - beginning + 1, 1);
                    /* We copy manually to handle escaping of characters. */
                    int inpos, outpos;
                    for (inpos = 0, outpos = 0;
                         inpos < (walk - beginning);
                         inpos++, outpos++) {
                        /* We only handle escaped double quotes to not break
                         * backwards compatibility with people using \w in
                         * regular expressions etc. */
                        if (beginning[inpos] == '\\' && beginning[inpos + 1] == '"')
                            inpos++;
                        str[outpos] = beginning[inpos];
                    }
                    if (token->identifier)
                        FUNC3(token->identifier, str);
                    FUNC0(str);
                    /* If we are at the end of a quoted string, skip the ending
                     * double quote. */
                    if (*walk == '"')
                        walk++;
                    if ((result = FUNC1(token)) != NULL)
                        return result;
                    break;
                }
            }

            if (FUNC5(token->name, "end") == 0) {
                //printf("checking for end: *%s*\n", walk);
                if (*walk == '\0' || *walk == '\n' || *walk == '\r') {
                    if ((result = FUNC1(token)) != NULL)
                        return result;
                    /* To make sure we start with an appropriate matching
                     * datastructure for commands which do *not* specify any
                     * criteria, we re-initialize the criteria system after
                     * every command. */
                    // TODO: make this testable
                    walk++;
                    break;
                }
            }
        }
    }

    return NULL;
}