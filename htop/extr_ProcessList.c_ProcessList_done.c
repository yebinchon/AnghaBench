
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int processes2; int processes; int processTable; int topology; scalar_t__ topologyOk; } ;
typedef TYPE_1__ ProcessList ;


 int Hashtable_delete (int ) ;
 int Vector_delete (int ) ;
 int hwloc_topology_destroy (int ) ;

void ProcessList_done(ProcessList* this) {





   Hashtable_delete(this->processTable);
   Vector_delete(this->processes);
   Vector_delete(this->processes2);
}
