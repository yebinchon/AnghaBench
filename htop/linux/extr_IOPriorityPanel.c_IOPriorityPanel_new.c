
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int name ;
typedef int Panel ;
typedef int Object ;
typedef scalar_t__ IOPriority ;


 int Class (int ) ;
 int FunctionBar_newEnterEsc (char*,char*) ;


 scalar_t__ IOPriority_Idle ;
 scalar_t__ IOPriority_None ;
 scalar_t__ IOPriority_tuple (int,int) ;
 int ListItem ;
 scalar_t__ ListItem_new (char*,scalar_t__) ;
 int Panel_add (int *,int *) ;
 int * Panel_new (int,int,int,int,int,int ,int ) ;
 int Panel_setHeader (int *,char*) ;
 int Panel_setSelected (int *,scalar_t__) ;
 scalar_t__ Panel_size (int *) ;
 int xSnprintf (char*,int,char*,char*,int,char*) ;

Panel* IOPriorityPanel_new(IOPriority currPrio) {
   Panel* this = Panel_new(1, 1, 1, 1, 1, Class(ListItem), FunctionBar_newEnterEsc("Set    ", "Cancel "));

   Panel_setHeader(this, "IO Priority:");
   Panel_add(this, (Object*) ListItem_new("None (based on nice)", IOPriority_None));
   if (currPrio == IOPriority_None) Panel_setSelected(this, 0);
   static const struct { int klass; const char* name; } classes[] = {
      { .klass = 128, .name = "Realtime" },
      { .klass = 129, .name = "Best-effort" },
      { .klass = 0, .name = ((void*)0) }
   };
   for (int c = 0; classes[c].name; c++) {
      for (int i = 0; i < 8; i++) {
         char name[50];
         xSnprintf(name, sizeof(name)-1, "%s %d %s", classes[c].name, i, i == 0 ? "(High)" : (i == 7 ? "(Low)" : ""));
         IOPriority ioprio = IOPriority_tuple(classes[c].klass, i);
         Panel_add(this, (Object*) ListItem_new(name, ioprio));
         if (currPrio == ioprio) Panel_setSelected(this, Panel_size(this) - 1);
      }
   }
   Panel_add(this, (Object*) ListItem_new("Idle", IOPriority_Idle));
   if (currPrio == IOPriority_Idle) Panel_setSelected(this, Panel_size(this) - 1);
   return this;
}
