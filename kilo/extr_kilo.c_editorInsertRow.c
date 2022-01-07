
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_6__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int erow ;
struct TYPE_8__ {int numrows; int dirty; TYPE_1__* row; } ;
struct TYPE_7__ {int idx; size_t size; scalar_t__ rsize; int * render; scalar_t__ hl_oc; int * hl; int chars; } ;


 TYPE_6__ E ;
 int editorUpdateRow (TYPE_1__*) ;
 int malloc (size_t) ;
 int memcpy (int ,char*,size_t) ;
 int memmove (TYPE_1__*,TYPE_1__*,int) ;
 TYPE_1__* realloc (TYPE_1__*,int) ;

void editorInsertRow(int at, char *s, size_t len) {
    if (at > E.numrows) return;
    E.row = realloc(E.row,sizeof(erow)*(E.numrows+1));
    if (at != E.numrows) {
        memmove(E.row+at+1,E.row+at,sizeof(E.row[0])*(E.numrows-at));
        for (int j = at+1; j <= E.numrows; j++) E.row[j].idx++;
    }
    E.row[at].size = len;
    E.row[at].chars = malloc(len+1);
    memcpy(E.row[at].chars,s,len+1);
    E.row[at].hl = ((void*)0);
    E.row[at].hl_oc = 0;
    E.row[at].render = ((void*)0);
    E.row[at].rsize = 0;
    E.row[at].idx = at;
    editorUpdateRow(E.row+at);
    E.numrows++;
    E.dirty++;
}
