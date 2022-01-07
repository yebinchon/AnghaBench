
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int lines; TYPE_1__* process; TYPE_2__* display; } ;
struct TYPE_10__ {int items; } ;
struct TYPE_9__ {int pid; } ;
typedef TYPE_2__ Panel ;
typedef TYPE_3__ InfoScreen ;


 int CRT_dropPrivileges () ;
 int CRT_restorePrivileges () ;
 int InfoScreen_addLine (TYPE_3__*,char*) ;
 int MAX (int ,int ) ;
 int Panel_getSelectedIndex (TYPE_2__*) ;
 int Panel_prune (TYPE_2__*) ;
 int Panel_setSelected (TYPE_2__*,int) ;
 char* Platform_getProcessEnv (int ) ;
 int Vector_insertionSort (int ) ;
 int free (char*) ;
 char* strrchr (char*,int ) ;

void EnvScreen_scan(InfoScreen* this) {
   Panel* panel = this->display;
   int idx = MAX(Panel_getSelectedIndex(panel), 0);

   Panel_prune(panel);

   CRT_dropPrivileges();
   char* env = Platform_getProcessEnv(this->process->pid);
   CRT_restorePrivileges();
   if (env) {
      for (char *p = env; *p; p = strrchr(p, 0)+1)
         InfoScreen_addLine(this, p);
      free(env);
   }
   else {
      InfoScreen_addLine(this, "Could not read process environment.");
   }

   Vector_insertionSort(this->lines);
   Vector_insertionSort(panel->items);
   Panel_setSelected(panel, idx);
}
