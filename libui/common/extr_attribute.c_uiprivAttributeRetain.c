
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int refcount; scalar_t__ ownedByUser; } ;
typedef TYPE_1__ uiAttribute ;



uiAttribute *uiprivAttributeRetain(uiAttribute *a)
{
 a->ownedByUser = 0;
 a->refcount++;
 return a;
}
