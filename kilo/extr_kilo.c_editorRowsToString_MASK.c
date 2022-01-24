#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int numrows; TYPE_1__* row; } ;
struct TYPE_3__ {scalar_t__ size; int /*<<< orphan*/  chars; } ;

/* Variables and functions */
 TYPE_2__ E ; 
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,scalar_t__) ; 

char *FUNC2(int *buflen) {
    char *buf = NULL, *p;
    int totlen = 0;
    int j;

    /* Compute count of bytes */
    for (j = 0; j < E.numrows; j++)
        totlen += E.row[j].size+1; /* +1 is for "\n" at end of every row */
    *buflen = totlen;
    totlen++; /* Also make space for nulterm */

    p = buf = FUNC0(totlen);
    for (j = 0; j < E.numrows; j++) {
        FUNC1(p,E.row[j].chars,E.row[j].size);
        p += E.row[j].size;
        *p = '\n';
        p++;
    }
    *p = '\0';
    return buf;
}