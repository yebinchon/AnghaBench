
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int parts; } ;
typedef TYPE_1__ uiTableColumn ;
struct tablePart {int colorColumn; } ;


 scalar_t__ g_ptr_array_index (int ,int) ;

void uiTableColumnPartSetTextColor(uiTableColumn *c, int part, int modelColumn)
{
 struct tablePart *p;

 p = (struct tablePart *) g_ptr_array_index(c->parts, part);
 p->colorColumn = modelColumn;

}
