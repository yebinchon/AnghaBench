
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {struct TYPE_9__* settings; TYPE_2__* l_next; TYPE_1__* l_prev; } ;
typedef TYPE_3__ tmp_area_t ;
struct TYPE_10__ {int numareas; TYPE_2__* areas; } ;
struct TYPE_8__ {TYPE_1__* l_prev; } ;
struct TYPE_7__ {TYPE_2__* l_next; } ;


 int FreeMemory (TYPE_3__*) ;
 TYPE_4__ tmpaasworld ;

void AAS_FreeTmpArea(tmp_area_t *tmparea)
{
 if (tmparea->l_next) tmparea->l_next->l_prev = tmparea->l_prev;
 if (tmparea->l_prev) tmparea->l_prev->l_next = tmparea->l_next;
 else tmpaasworld.areas = tmparea->l_next;
 if (tmparea->settings) FreeMemory(tmparea->settings);
 FreeMemory(tmparea);
 tmpaasworld.numareas--;
}
