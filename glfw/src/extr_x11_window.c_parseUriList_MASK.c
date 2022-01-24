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
 char* FUNC0 (scalar_t__,int) ; 
 char** FUNC1 (char**,int) ; 
 scalar_t__ FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char*,char const*,scalar_t__) ; 
 char* FUNC4 (char*,char*) ; 
 char FUNC5 (char const*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static char** FUNC6(char* text, int* count)
{
    const char* prefix = "file://";
    char** paths = NULL;
    char* line;

    *count = 0;

    while ((line = FUNC4(text, "\r\n")))
    {
        text = NULL;

        if (line[0] == '#')
            continue;

        if (FUNC3(line, prefix, FUNC2(prefix)) == 0)
        {
            line += FUNC2(prefix);
            // TODO: Validate hostname
            while (*line != '/')
                line++;
        }

        (*count)++;

        char* path = FUNC0(FUNC2(line) + 1, 1);
        paths = FUNC1(paths, *count * sizeof(char*));
        paths[*count - 1] = path;

        while (*line)
        {
            if (line[0] == '%' && line[1] && line[2])
            {
                const char digits[3] = { line[1], line[2], '\0' };
                *path = FUNC5(digits, NULL, 16);
                line += 2;
            }
            else
                *path = *line;

            path++;
            line++;
        }
    }

    return paths;
}