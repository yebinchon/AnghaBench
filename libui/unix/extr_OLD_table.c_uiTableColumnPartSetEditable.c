
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int parts; } ;
typedef TYPE_1__ uiTableColumn ;
struct tablePart {int type; int r; } ;


 int g_object_set (int ,char*,int,int *) ;
 scalar_t__ g_ptr_array_index (int ,int) ;





void uiTableColumnPartSetEditable(uiTableColumn *c, int part, int editable)
{
 struct tablePart *p;

 p = (struct tablePart *) g_ptr_array_index(c->parts, part);
 switch (p->type) {
 case 129:
 case 128:
  return;
 case 131:
 case 130:
  g_object_set(p->r, "sensitive", editable != 0, ((void*)0));
  return;
 }
 g_object_set(p->r, "editable", editable != 0, ((void*)0));
}
