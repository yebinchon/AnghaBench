
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* data; } ;
typedef TYPE_1__ uiOpenTypeFeatures ;


 int uiprivFree (TYPE_1__*) ;

void uiFreeOpenTypeFeatures(uiOpenTypeFeatures *otf)
{
 uiprivFree(otf->data);
 uiprivFree(otf);
}
