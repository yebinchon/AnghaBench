#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int ssize_t ;
struct TYPE_2__ {char* filename; scalar_t__ dirty; int /*<<< orphan*/  numrows; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 TYPE_1__ E ; 
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (char**,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (char*) ; 

int FUNC8(char *filename) {
    FILE *fp;

    E.dirty = 0;
    FUNC4(E.filename);
    E.filename = FUNC7(filename);

    fp = FUNC3(filename,"r");
    if (!fp) {
        if (errno != ENOENT) {
            FUNC6("Opening file");
            FUNC1(1);
        }
        return 1;
    }

    char *line = NULL;
    size_t linecap = 0;
    ssize_t linelen;
    while((linelen = FUNC5(&line,&linecap,fp)) != -1) {
        if (linelen && (line[linelen-1] == '\n' || line[linelen-1] == '\r'))
            line[--linelen] = '\0';
        FUNC0(E.numrows,line,linelen);
    }
    FUNC4(line);
    FUNC2(fp);
    E.dirty = 0;
    return 0;
}