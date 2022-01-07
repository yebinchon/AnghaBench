
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int erow ;
struct TYPE_2__ {int rowoff; int cy; int coloff; int cx; int numrows; int screencols; int dirty; int * row; } ;


 TYPE_1__ E ;
 int editorInsertRow (int,char*,int ) ;
 int editorRowInsertChar (int *,int,int) ;

void editorInsertChar(int c) {
    int filerow = E.rowoff+E.cy;
    int filecol = E.coloff+E.cx;
    erow *row = (filerow >= E.numrows) ? ((void*)0) : &E.row[filerow];



    if (!row) {
        while(E.numrows <= filerow)
            editorInsertRow(E.numrows,"",0);
    }
    row = &E.row[filerow];
    editorRowInsertChar(row,filecol,c);
    if (E.cx == E.screencols-1)
        E.coloff++;
    else
        E.cx++;
    E.dirty++;
}
