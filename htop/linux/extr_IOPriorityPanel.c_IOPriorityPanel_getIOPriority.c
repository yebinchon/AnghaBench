
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int key; } ;
typedef int Panel ;
typedef TYPE_1__ ListItem ;
typedef int IOPriority ;


 scalar_t__ Panel_getSelected (int *) ;

IOPriority IOPriorityPanel_getIOPriority(Panel* this) {
   return (IOPriority) ( ((ListItem*) Panel_getSelected(this))->key );
}
