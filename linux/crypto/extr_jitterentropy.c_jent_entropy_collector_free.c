
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rand_data {struct rand_data* mem; } ;


 int jent_zfree (struct rand_data*) ;

void jent_entropy_collector_free(struct rand_data *entropy_collector)
{
 jent_zfree(entropy_collector->mem);
 entropy_collector->mem = ((void*)0);
 jent_zfree(entropy_collector);
}
