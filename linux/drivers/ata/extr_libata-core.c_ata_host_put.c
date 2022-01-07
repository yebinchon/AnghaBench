
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_host {int kref; } ;


 int ata_host_release ;
 int kref_put (int *,int ) ;

void ata_host_put(struct ata_host *host)
{
 kref_put(&host->kref, ata_host_release);
}
