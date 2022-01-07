
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmc_data {int ghws; int phws; int shws; int chws; } ;


 int kfree (int ) ;

void pmc_data_free(struct pmc_data *pmc_data)
{
 kfree(pmc_data->chws);
 kfree(pmc_data->shws);
 kfree(pmc_data->phws);
 kfree(pmc_data->ghws);
}
