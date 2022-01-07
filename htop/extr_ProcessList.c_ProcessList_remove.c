
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {unsigned int pid; } ;
struct TYPE_7__ {int processes; int processTable; } ;
typedef TYPE_1__ ProcessList ;
typedef TYPE_2__ Process ;


 scalar_t__ Hashtable_count (int ) ;
 int * Hashtable_get (int ,unsigned int) ;
 TYPE_2__* Hashtable_remove (int ,unsigned int) ;
 int Process_pidCompare ;
 scalar_t__ Vector_count (int ) ;
 int Vector_indexOf (int ,TYPE_2__*,int ) ;
 int Vector_remove (int ,int) ;
 int assert (int) ;

void ProcessList_remove(ProcessList* this, Process* p) {
   assert(Vector_indexOf(this->processes, p, Process_pidCompare) != -1);
   assert(Hashtable_get(this->processTable, p->pid) != ((void*)0));
   Process* pp = Hashtable_remove(this->processTable, p->pid);
   assert(pp == p); (void)pp;
   unsigned int pid = p->pid;
   int idx = Vector_indexOf(this->processes, p, Process_pidCompare);
   assert(idx != -1);
   if (idx >= 0) Vector_remove(this->processes, idx);
   assert(Hashtable_get(this->processTable, pid) == ((void*)0)); (void)pid;
   assert(Hashtable_count(this->processTable) == Vector_count(this->processes));
}
