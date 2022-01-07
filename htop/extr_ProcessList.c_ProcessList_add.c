
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int pid; } ;
struct TYPE_8__ {int processes; int processTable; } ;
typedef TYPE_1__ ProcessList ;
typedef TYPE_2__ Process ;


 scalar_t__ Hashtable_count (int ) ;
 int * Hashtable_get (int ,int ) ;
 int Hashtable_put (int ,int ,TYPE_2__*) ;
 int Process_pidCompare ;
 int Vector_add (int ,TYPE_2__*) ;
 scalar_t__ Vector_count (int ) ;
 int Vector_indexOf (int ,TYPE_2__*,int ) ;
 int assert (int) ;

void ProcessList_add(ProcessList* this, Process* p) {
   assert(Vector_indexOf(this->processes, p, Process_pidCompare) == -1);
   assert(Hashtable_get(this->processTable, p->pid) == ((void*)0));

   Vector_add(this->processes, p);
   Hashtable_put(this->processTable, p->pid, p);

   assert(Vector_indexOf(this->processes, p, Process_pidCompare) != -1);
   assert(Hashtable_get(this->processTable, p->pid) != ((void*)0));
   assert(Hashtable_count(this->processTable) == Vector_count(this->processes));
}
