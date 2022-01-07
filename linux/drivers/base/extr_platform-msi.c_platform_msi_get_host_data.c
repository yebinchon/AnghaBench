
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_msi_priv_data {void* host_data; } ;
struct irq_domain {struct platform_msi_priv_data* host_data; } ;



void *platform_msi_get_host_data(struct irq_domain *domain)
{
 struct platform_msi_priv_data *data = domain->host_data;
 return data->host_data;
}
