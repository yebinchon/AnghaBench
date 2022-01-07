
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int screenrows; int screencols; int * syntax; int * filename; scalar_t__ dirty; int * row; scalar_t__ numrows; scalar_t__ coloff; scalar_t__ rowoff; scalar_t__ cy; scalar_t__ cx; } ;


 TYPE_1__ E ;
 int STDIN_FILENO ;
 int STDOUT_FILENO ;
 int exit (int) ;
 int getWindowSize (int ,int ,int*,int *) ;
 int perror (char*) ;

void initEditor(void) {
    E.cx = 0;
    E.cy = 0;
    E.rowoff = 0;
    E.coloff = 0;
    E.numrows = 0;
    E.row = ((void*)0);
    E.dirty = 0;
    E.filename = ((void*)0);
    E.syntax = ((void*)0);
    if (getWindowSize(STDIN_FILENO,STDOUT_FILENO,
                      &E.screenrows,&E.screencols) == -1)
    {
        perror("Unable to query the screen for size (columns / rows)");
        exit(1);
    }
    E.screenrows -= 2;
}
