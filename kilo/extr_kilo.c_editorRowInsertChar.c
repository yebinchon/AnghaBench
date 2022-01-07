
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int size; char* chars; } ;
typedef TYPE_1__ erow ;
struct TYPE_6__ {int dirty; } ;


 TYPE_4__ E ;
 int editorUpdateRow (TYPE_1__*) ;
 int memmove (char*,char*,int) ;
 int memset (int ,char,int) ;
 void* realloc (char*,int) ;

void editorRowInsertChar(erow *row, int at, int c) {
    if (at > row->size) {


        int padlen = at-row->size;

        row->chars = realloc(row->chars,row->size+padlen+2);
        memset(row->chars+row->size,' ',padlen);
        row->chars[row->size+padlen+1] = '\0';
        row->size += padlen+1;
    } else {


        row->chars = realloc(row->chars,row->size+2);
        memmove(row->chars+at+1,row->chars+at,row->size-at+1);
        row->size++;
    }
    row->chars[at] = c;
    editorUpdateRow(row);
    E.dirty++;
}
