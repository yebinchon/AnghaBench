
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ownedByUser; } ;
typedef TYPE_1__ uiAttribute ;


 int destroy (TYPE_1__*) ;

void uiFreeAttribute(uiAttribute *a)
{
 if (!a->ownedByUser)
                                                                ;
 destroy(a);
}
