
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zcomp {int stream; int node; } ;


 int CPUHP_ZCOMP_PREPARE ;
 int cpuhp_state_remove_instance (int ,int *) ;
 int free_percpu (int ) ;
 int kfree (struct zcomp*) ;

void zcomp_destroy(struct zcomp *comp)
{
 cpuhp_state_remove_instance(CPUHP_ZCOMP_PREPARE, &comp->node);
 free_percpu(comp->stream);
 kfree(comp);
}
