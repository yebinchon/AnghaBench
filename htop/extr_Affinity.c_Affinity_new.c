
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; int * pl; void* cpus; } ;
typedef int ProcessList ;
typedef TYPE_1__ Affinity ;


 void* xCalloc (int,int) ;

Affinity* Affinity_new(ProcessList* pl) {
   Affinity* this = xCalloc(1, sizeof(Affinity));
   this->size = 8;
   this->cpus = xCalloc(this->size, sizeof(int));
   this->pl = pl;
   return this;
}
