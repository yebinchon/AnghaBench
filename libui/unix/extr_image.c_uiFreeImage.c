
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int images; } ;
typedef TYPE_1__ uiImage ;


 int TRUE ;
 int g_ptr_array_free (int ,int ) ;
 int uiprivFree (TYPE_1__*) ;

void uiFreeImage(uiImage *i)
{
 g_ptr_array_free(i->images, TRUE);
 uiprivFree(i);
}
