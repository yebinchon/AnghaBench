
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_host {int kref; } ;


 int kref_get (int *) ;

void ata_host_get(struct ata_host *host)
{
 kref_get(&host->kref);
}
