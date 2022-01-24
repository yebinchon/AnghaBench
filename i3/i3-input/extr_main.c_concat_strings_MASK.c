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
typedef  char uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 char* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static uint8_t *FUNC5(char **glyphs, int max) {
    uint8_t *output = FUNC2(max + 1, 4);
    uint8_t *walk = output;
    for (int c = 0; c < max; c++) {
        FUNC1("at %c\n", glyphs[c][0]);
        /* if the first byte is 0, this has to be UCS2 */
        if (glyphs[c][0] == '\0') {
            FUNC0(walk, glyphs[c], 2);
            walk += 2;
        } else {
            FUNC3((char *)walk, glyphs[c]);
            walk += FUNC4(glyphs[c]);
        }
    }
    FUNC1("output = %s\n", output);
    return output;
}