
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ checked; } ;
typedef TYPE_1__ uiMenuItem ;


 scalar_t__ FALSE ;

int uiMenuItemChecked(uiMenuItem *item)
{
 return item->checked != FALSE;
}
