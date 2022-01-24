#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_6__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  erow ;
struct TYPE_8__ {int numrows; int /*<<< orphan*/  dirty; TYPE_1__* row; } ;
struct TYPE_7__ {int idx; size_t size; scalar_t__ rsize; int /*<<< orphan*/ * render; scalar_t__ hl_oc; int /*<<< orphan*/ * hl; int /*<<< orphan*/  chars; } ;

/* Variables and functions */
 TYPE_6__ E ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_1__*,int) ; 
 TYPE_1__* FUNC4 (TYPE_1__*,int) ; 

void FUNC5(int at, char *s, size_t len) {
    if (at > E.numrows) return;
    E.row = FUNC4(E.row,sizeof(erow)*(E.numrows+1));
    if (at != E.numrows) {
        FUNC3(E.row+at+1,E.row+at,sizeof(E.row[0])*(E.numrows-at));
        for (int j = at+1; j <= E.numrows; j++) E.row[j].idx++;
    }
    E.row[at].size = len;
    E.row[at].chars = FUNC1(len+1);
    FUNC2(E.row[at].chars,s,len+1);
    E.row[at].hl = NULL;
    E.row[at].hl_oc = 0;
    E.row[at].render = NULL;
    E.row[at].rsize = 0;
    E.row[at].idx = at;
    FUNC0(E.row+at);
    E.numrows++;
    E.dirty++;
}