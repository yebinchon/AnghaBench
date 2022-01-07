
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int flags; } ;
struct TYPE_7__ {TYPE_1__* settings; } ;
struct TYPE_6__ {int key; } ;
struct TYPE_5__ {int changed; int* fields; int flags; } ;
typedef int ProcessField ;
typedef int Panel ;
typedef TYPE_2__ ListItem ;
typedef TYPE_3__ ColumnsPanel ;


 scalar_t__ Panel_get (int *,int) ;
 int Panel_size (int *) ;
 TYPE_4__* Process_fields ;
 int* xRealloc (int*,int) ;

void ColumnsPanel_update(Panel* super) {
   ColumnsPanel* this = (ColumnsPanel*) super;
   int size = Panel_size(super);
   this->settings->changed = 1;
   this->settings->fields = xRealloc(this->settings->fields, sizeof(ProcessField) * (size+1));
   this->settings->flags = 0;
   for (int i = 0; i < size; i++) {
      int key = ((ListItem*) Panel_get(super, i))->key;
      this->settings->fields[i] = key;
      this->settings->flags |= Process_fields[key].flags;
   }
   this->settings->fields[size] = 0;
}
