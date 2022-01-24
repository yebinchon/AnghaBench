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
struct winsize {int ws_col; int ws_row; } ;

/* Variables and functions */
 int /*<<< orphan*/  TIOCGWINSZ ; 
 int FUNC0 (int,int,int*,int*) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,struct winsize*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int,int) ; 
 int FUNC3 (char*) ; 
 int FUNC4 (int,char*,int) ; 

int FUNC5(int ifd, int ofd, int *rows, int *cols) {
    struct winsize ws;

    if (FUNC1(1, TIOCGWINSZ, &ws) == -1 || ws.ws_col == 0) {
        /* ioctl() failed. Try to query the terminal itself. */
        int orig_row, orig_col, retval;

        /* Get the initial position so we can restore it later. */
        retval = FUNC0(ifd,ofd,&orig_row,&orig_col);
        if (retval == -1) goto failed;

        /* Go to right/bottom margin and get position. */
        if (FUNC4(ofd,"\x1b[999C\x1b[999B",12) != 12) goto failed;
        retval = FUNC0(ifd,ofd,rows,cols);
        if (retval == -1) goto failed;

        /* Restore position. */
        char seq[32];
        FUNC2(seq,32,"\x1b[%d;%dH",orig_row,orig_col);
        if (FUNC4(ofd,seq,FUNC3(seq)) == -1) {
            /* Can't recover... */
        }
        return 0;
    } else {
        *cols = ws.ws_col;
        *rows = ws.ws_row;
        return 0;
    }

failed:
    return -1;
}