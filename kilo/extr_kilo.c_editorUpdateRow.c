
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* render; int size; char* chars; int rsize; } ;
typedef TYPE_1__ erow ;


 char TAB ;
 int editorUpdateSyntax (TYPE_1__*) ;
 int free (char*) ;
 char* malloc (int) ;

void editorUpdateRow(erow *row) {
    int tabs = 0, nonprint = 0, j, idx;



    free(row->render);
    for (j = 0; j < row->size; j++)
        if (row->chars[j] == TAB) tabs++;

    row->render = malloc(row->size + tabs*8 + nonprint*9 + 1);
    idx = 0;
    for (j = 0; j < row->size; j++) {
        if (row->chars[j] == TAB) {
            row->render[idx++] = ' ';
            while((idx+1) % 8 != 0) row->render[idx++] = ' ';
        } else {
            row->render[idx++] = row->chars[j];
        }
    }
    row->rsize = idx;
    row->render[idx] = '\0';


    editorUpdateSyntax(row);
}
