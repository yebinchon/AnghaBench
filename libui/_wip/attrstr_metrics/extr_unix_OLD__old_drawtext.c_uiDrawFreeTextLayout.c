
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int s; struct TYPE_4__* graphemes; int defaultFont; int attrs; } ;
typedef TYPE_1__ uiDrawTextLayout ;


 int g_free (int ) ;
 int g_object_unref (int ) ;
 int pango_attr_list_unref (int ) ;
 int uiFree (TYPE_1__*) ;

void uiDrawFreeTextLayout(uiDrawTextLayout *layout)
{
 pango_attr_list_unref(layout->attrs);
 g_object_unref(layout->defaultFont);
 uiFree(layout->graphemes);
 g_free(layout->s);
 uiFree(layout);
}
