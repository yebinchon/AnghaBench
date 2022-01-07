
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* chars; size_t size; } ;
typedef TYPE_1__ erow ;
struct TYPE_6__ {int dirty; } ;


 TYPE_4__ E ;
 int editorUpdateRow (TYPE_1__*) ;
 int memcpy (char*,char*,size_t) ;
 char* realloc (char*,size_t) ;

void editorRowAppendString(erow *row, char *s, size_t len) {
    row->chars = realloc(row->chars,row->size+len+1);
    memcpy(row->chars+row->size,s,len);
    row->size += len;
    row->chars[row->size] = '\0';
    editorUpdateRow(row);
    E.dirty++;
}
