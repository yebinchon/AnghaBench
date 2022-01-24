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
typedef  int /*<<< orphan*/  uint8_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* format ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  glyphs_utf8 ; 
 int /*<<< orphan*/  input_position ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 char* FUNC5 (int,int) ; 
 int /*<<< orphan*/  sockfd ; 
 int FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 

__attribute__((used)) static void FUNC8(void) {
    char *command = (char *)FUNC0(glyphs_utf8, input_position);

    /* count the occurrences of %s in the string */
    int c;
    int len = FUNC6(format);
    int cnt = 0;
    for (c = 0; c < (len - 1); c++)
        if (format[c] == '%' && format[c + 1] == 's')
            cnt++;
    FUNC4("occurrences = %d\n", cnt);

    /* allocate space for the output */
    int inputlen = FUNC6(command);
    char *full = FUNC5(FUNC6(format) - (2 * cnt) /* format without all %s */
                             + (inputlen * cnt)     /* replaced %s */
                             + 1,                   /* trailing NUL */
                         1);
    char *dest = full;
    for (c = 0; c < len; c++) {
        /* if this is not % or it is % but without a following 's',
         * just copy the character */
        if (format[c] != '%' || (c == (len - 1)) || format[c + 1] != 's')
            *(dest++) = format[c];
        else {
            FUNC7(dest, command, inputlen);
            dest += inputlen;
            /* skip the following 's' of '%s' */
            c++;
        }
    }

    /* prefix the command if a prefix was specified on commandline */
    FUNC4("command = %s\n", full);

    FUNC3(sockfd, FUNC6(full), 0, (uint8_t *)full);

    FUNC2(full);

    FUNC1(0);
}