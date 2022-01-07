
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct foreachParams {int attrs; } ;
struct TYPE_4__ {size_t start_index; size_t end_index; } ;
typedef TYPE_1__ PangoAttribute ;


 int pango_attr_list_insert (int ,TYPE_1__*) ;

__attribute__((used)) static void addattr(struct foreachParams *p, size_t start, size_t end, PangoAttribute *attr)
{
 if (attr == ((void*)0))
  return;
 attr->start_index = start;
 attr->end_index = end;
 pango_attr_list_insert(p->attrs, attr);
}
