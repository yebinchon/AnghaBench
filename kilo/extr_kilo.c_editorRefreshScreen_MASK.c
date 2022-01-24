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
typedef  int /*<<< orphan*/  welcome ;
struct abuf {int /*<<< orphan*/  len; int /*<<< orphan*/  b; } ;
typedef  int /*<<< orphan*/  status ;
typedef  int /*<<< orphan*/  rstatus ;
struct TYPE_3__ {int rsize; char* render; unsigned char* hl; int size; scalar_t__* chars; } ;
typedef  TYPE_1__ erow ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_4__ {int screenrows; int rowoff; int numrows; int screencols; int coloff; char* filename; int cy; char* statusmsg; int statusmsg_time; int cx; TYPE_1__* row; scalar_t__ dirty; } ;

/* Variables and functions */
 struct abuf ABUF_INIT ; 
 TYPE_2__ E ; 
 unsigned char HL_NONPRINT ; 
 unsigned char HL_NORMAL ; 
 char* KILO_VERSION ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 scalar_t__ TAB ; 
 int /*<<< orphan*/  FUNC0 (struct abuf*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct abuf*) ; 
 int FUNC2 (unsigned char) ; 
 int FUNC3 (char*,int,char*,...) ; 
 int FUNC4 (char*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC7(void) {
    int y;
    erow *r;
    char buf[32];
    struct abuf ab = ABUF_INIT;

    FUNC0(&ab,"\x1b[?25l",6); /* Hide cursor. */
    FUNC0(&ab,"\x1b[H",3); /* Go home. */
    for (y = 0; y < E.screenrows; y++) {
        int filerow = E.rowoff+y;

        if (filerow >= E.numrows) {
            if (E.numrows == 0 && y == E.screenrows/3) {
                char welcome[80];
                int welcomelen = FUNC3(welcome,sizeof(welcome),
                    "Kilo editor -- verison %s\x1b[0K\r\n", KILO_VERSION);
                int padding = (E.screencols-welcomelen)/2;
                if (padding) {
                    FUNC0(&ab,"~",1);
                    padding--;
                }
                while(padding--) FUNC0(&ab," ",1);
                FUNC0(&ab,welcome,welcomelen);
            } else {
                FUNC0(&ab,"~\x1b[0K\r\n",7);
            }
            continue;
        }

        r = &E.row[filerow];

        int len = r->rsize - E.coloff;
        int current_color = -1;
        if (len > 0) {
            if (len > E.screencols) len = E.screencols;
            char *c = r->render+E.coloff;
            unsigned char *hl = r->hl+E.coloff;
            int j;
            for (j = 0; j < len; j++) {
                if (hl[j] == HL_NONPRINT) {
                    char sym;
                    FUNC0(&ab,"\x1b[7m",4);
                    if (c[j] <= 26)
                        sym = '@'+c[j];
                    else
                        sym = '?';
                    FUNC0(&ab,&sym,1);
                    FUNC0(&ab,"\x1b[0m",4);
                } else if (hl[j] == HL_NORMAL) {
                    if (current_color != -1) {
                        FUNC0(&ab,"\x1b[39m",5);
                        current_color = -1;
                    }
                    FUNC0(&ab,c+j,1);
                } else {
                    int color = FUNC2(hl[j]);
                    if (color != current_color) {
                        char buf[16];
                        int clen = FUNC3(buf,sizeof(buf),"\x1b[%dm",color);
                        current_color = color;
                        FUNC0(&ab,buf,clen);
                    }
                    FUNC0(&ab,c+j,1);
                }
            }
        }
        FUNC0(&ab,"\x1b[39m",5);
        FUNC0(&ab,"\x1b[0K",4);
        FUNC0(&ab,"\r\n",2);
    }

    /* Create a two rows status. First row: */
    FUNC0(&ab,"\x1b[0K",4);
    FUNC0(&ab,"\x1b[7m",4);
    char status[80], rstatus[80];
    int len = FUNC3(status, sizeof(status), "%.20s - %d lines %s",
        E.filename, E.numrows, E.dirty ? "(modified)" : "");
    int rlen = FUNC3(rstatus, sizeof(rstatus),
        "%d/%d",E.rowoff+E.cy+1,E.numrows);
    if (len > E.screencols) len = E.screencols;
    FUNC0(&ab,status,len);
    while(len < E.screencols) {
        if (E.screencols - len == rlen) {
            FUNC0(&ab,rstatus,rlen);
            break;
        } else {
            FUNC0(&ab," ",1);
            len++;
        }
    }
    FUNC0(&ab,"\x1b[0m\r\n",6);

    /* Second row depends on E.statusmsg and the status message update time. */
    FUNC0(&ab,"\x1b[0K",4);
    int msglen = FUNC4(E.statusmsg);
    if (msglen && FUNC5(NULL)-E.statusmsg_time < 5)
        FUNC0(&ab,E.statusmsg,msglen <= E.screencols ? msglen : E.screencols);

    /* Put cursor at its current position. Note that the horizontal position
     * at which the cursor is displayed may be different compared to 'E.cx'
     * because of TABs. */
    int j;
    int cx = 1;
    int filerow = E.rowoff+E.cy;
    erow *row = (filerow >= E.numrows) ? NULL : &E.row[filerow];
    if (row) {
        for (j = E.coloff; j < (E.cx+E.coloff); j++) {
            if (j < row->size && row->chars[j] == TAB) cx += 7-((cx)%8);
            cx++;
        }
    }
    FUNC3(buf,sizeof(buf),"\x1b[%d;%dH",E.cy+1,cx);
    FUNC0(&ab,buf,FUNC4(buf));
    FUNC0(&ab,"\x1b[?25h",6); /* Show cursor. */
    FUNC6(STDOUT_FILENO,ab.b,ab.len);
    FUNC1(&ab);
}