
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ pid_t ;
typedef int Vector ;
struct TYPE_10__ {scalar_t__ pid; int showChildren; scalar_t__ indent; int show; } ;
struct TYPE_9__ {int * processes2; int * processes; TYPE_1__* settings; } ;
struct TYPE_8__ {int direction; int sortKey; int treeView; } ;
typedef TYPE_2__ ProcessList ;
typedef TYPE_3__ Process ;


 int PID ;
 int ProcessList_buildTree (TYPE_2__*,scalar_t__,int ,int ,int,int) ;
 scalar_t__ Process_getParentPid (TYPE_3__*) ;
 int Vector_add (int *,TYPE_3__*) ;
 scalar_t__ Vector_get (int *,int) ;
 int Vector_insertionSort (int *) ;
 int Vector_quickSort (int *) ;
 int Vector_size (int *) ;
 scalar_t__ Vector_take (int *,int) ;
 int assert (int) ;

void ProcessList_sort(ProcessList* this) {
   if (!this->settings->treeView) {
      Vector_insertionSort(this->processes);
   } else {

      int direction = this->settings->direction;
      int sortKey = this->settings->sortKey;

      this->settings->sortKey = PID;
      this->settings->direction = 1;
      Vector_quickSort(this->processes);

      this->settings->sortKey = sortKey;
      this->settings->direction = direction;
      int vsize = Vector_size(this->processes);

      int size;
      while ((size = Vector_size(this->processes))) {
         int i;
         for (i = 0; i < size; i++) {
            Process* process = (Process*)(Vector_get(this->processes, i));

            if (!process->show) {
               process = (Process*)(Vector_take(this->processes, i));
               process->indent = 0;
               Vector_add(this->processes2, process);
               ProcessList_buildTree(this, process->pid, 0, 0, direction, 0);
               break;
            }
            pid_t ppid = Process_getParentPid(process);

            int l = 0, r = size;



            if (process->pid == ppid)
               r = 0;
            while (l < r) {
               int c = (l + r) / 2;
               pid_t pid = ((Process*)(Vector_get(this->processes, c)))->pid;
               if (ppid == pid) {
                  break;
               } else if (ppid < pid) {
                  r = c;
               } else {
                  l = c + 1;
               }
            }

            if (l >= r) {
               process = (Process*)(Vector_take(this->processes, i));
               process->indent = 0;
               Vector_add(this->processes2, process);
               ProcessList_buildTree(this, process->pid, 0, 0, direction, process->showChildren);
               break;
            }
         }

         assert(i < size);
      }
      assert(Vector_size(this->processes2) == vsize); (void)vsize;
      assert(Vector_size(this->processes) == 0);

      Vector* t = this->processes;
      this->processes = this->processes2;
      this->processes2 = t;
   }
}
