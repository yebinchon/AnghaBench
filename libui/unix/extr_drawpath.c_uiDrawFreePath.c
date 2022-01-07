
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pieces; } ;
typedef TYPE_1__ uiDrawPath ;


 int TRUE ;
 int g_array_free (int ,int ) ;
 int uiprivFree (TYPE_1__*) ;

void uiDrawFreePath(uiDrawPath *p)
{
 g_array_free(p->pieces, TRUE);
 uiprivFree(p);
}
