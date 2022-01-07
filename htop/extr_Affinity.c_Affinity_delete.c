
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* cpus; } ;
typedef TYPE_1__ Affinity ;


 int free (TYPE_1__*) ;

void Affinity_delete(Affinity* this) {
   free(this->cpus);
   free(this);
}
