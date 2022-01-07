
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int attrs; int * graphemes; } ;
typedef TYPE_1__ uiDrawTextLayout ;
struct TYPE_7__ {int end_index; int start_index; } ;
typedef TYPE_2__ PangoAttribute ;


 int pango_attr_list_insert (int ,TYPE_2__*) ;

__attribute__((used)) static void addAttr(uiDrawTextLayout *layout, PangoAttribute *attr, int startChar, int endChar)
{
 attr->start_index = layout->graphemes[startChar];
 attr->end_index = layout->graphemes[endChar];
 pango_attr_list_insert(layout->attrs, attr);

}
