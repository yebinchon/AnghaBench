
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hl; int chars; int render; } ;
typedef TYPE_1__ erow ;


 int free (int ) ;

void editorFreeRow(erow *row) {
    free(row->render);
    free(row->chars);
    free(row->hl);
}
