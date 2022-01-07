
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int Vector ;
struct TYPE_7__ {TYPE_1__* modes; scalar_t__ filtering; } ;
struct TYPE_6__ {int value; } ;
struct TYPE_5__ {char* buffer; } ;
typedef int Panel ;
typedef int Object ;
typedef TYPE_2__ ListItem ;
typedef TYPE_3__ IncSet ;


 size_t INC_FILTER ;
 int Panel_add (int *,int *) ;
 int * Panel_getSelected (int *) ;
 int Panel_prune (int *) ;
 int Panel_setSelected (int *,int) ;
 scalar_t__ String_contains_i (int ,char const*) ;
 int * Vector_get (int *,int) ;
 int Vector_size (int *) ;

__attribute__((used)) static void updateWeakPanel(IncSet* this, Panel* panel, Vector* lines) {
   Object* selected = Panel_getSelected(panel);
   Panel_prune(panel);
   if (this->filtering) {
      int n = 0;
      const char* incFilter = this->modes[INC_FILTER].buffer;
      for (int i = 0; i < Vector_size(lines); i++) {
         ListItem* line = (ListItem*)Vector_get(lines, i);
         if (String_contains_i(line->value, incFilter)) {
            Panel_add(panel, (Object*)line);
            if (selected == (Object*)line) Panel_setSelected(panel, n);
            n++;
         }
      }
   } else {
      for (int i = 0; i < Vector_size(lines); i++) {
         Object* line = Vector_get(lines, i);
         Panel_add(panel, line);
         if (selected == line) Panel_setSelected(panel, i);
      }
   }
}
