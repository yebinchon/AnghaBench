
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int numrows; TYPE_1__* row; } ;
struct TYPE_3__ {scalar_t__ size; int chars; } ;


 TYPE_2__ E ;
 char* malloc (int) ;
 int memcpy (char*,int ,scalar_t__) ;

char *editorRowsToString(int *buflen) {
    char *buf = ((void*)0), *p;
    int totlen = 0;
    int j;


    for (j = 0; j < E.numrows; j++)
        totlen += E.row[j].size+1;
    *buflen = totlen;
    totlen++;

    p = buf = malloc(totlen);
    for (j = 0; j < E.numrows; j++) {
        memcpy(p,E.row[j].chars,E.row[j].size);
        p += E.row[j].size;
        *p = '\n';
        p++;
    }
    *p = '\0';
    return buf;
}
