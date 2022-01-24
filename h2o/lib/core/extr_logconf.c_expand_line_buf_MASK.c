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
 char* FUNC0 (size_t) ; 
 char* FUNC1 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,size_t) ; 

__attribute__((used)) static char *FUNC3(char *line, size_t *cur_size, size_t required, int should_realloc)
{
    size_t new_size = *cur_size;

    /* determine the new size */
    do {
        new_size *= 2;
    } while (new_size < required);

    /* reallocate */
    if (!should_realloc) {
        char *newpt = FUNC0(new_size);
        FUNC2(newpt, line, *cur_size);
        line = newpt;
    } else {
        line = FUNC1(line, new_size);
    }
    *cur_size = new_size;

    return line;
}