#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* name; char* value; } ;
typedef  TYPE_1__ placeholder_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*) ; 
 char* FUNC2 (char*) ; 
 int FUNC3 (char*) ; 

char *FUNC4(char *format, placeholder_t *placeholders, int num) {
    if (format == NULL)
        return NULL;

    /* We have to first iterate over the string to see how much buffer space
     * we need to allocate. */
    int buffer_len = FUNC3(format) + 1;
    for (char *walk = format; *walk != '\0'; walk++) {
        for (int i = 0; i < num; i++) {
            if (!FUNC0(walk, placeholders[i].name))
                continue;

            buffer_len = buffer_len - FUNC3(placeholders[i].name) + FUNC3(placeholders[i].value);
            walk += FUNC3(placeholders[i].name) - 1;
            break;
        }
    }

    /* Now we can parse the format string. */
    char buffer[buffer_len];
    char *outwalk = buffer;
    for (char *walk = format; *walk != '\0'; walk++) {
        if (*walk != '%') {
            *(outwalk++) = *walk;
            continue;
        }

        bool matched = false;
        for (int i = 0; i < num; i++) {
            if (!FUNC0(walk, placeholders[i].name)) {
                continue;
            }

            matched = true;
            outwalk += FUNC1(outwalk, "%s", placeholders[i].value);
            walk += FUNC3(placeholders[i].name) - 1;
            break;
        }

        if (!matched)
            *(outwalk++) = *walk;
    }

    *outwalk = '\0';
    return FUNC2(buffer);
}