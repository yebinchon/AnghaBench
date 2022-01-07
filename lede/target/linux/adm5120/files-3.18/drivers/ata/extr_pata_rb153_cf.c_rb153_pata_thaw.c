
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rb153_cf_info {scalar_t__ frozen; } ;
struct ata_port {TYPE_1__* host; } ;
struct TYPE_2__ {struct rb153_cf_info* private_data; } ;



__attribute__((used)) static void rb153_pata_thaw(struct ata_port *ap)
{
 struct rb153_cf_info *info = ap->host->private_data;

 info->frozen = 0;
}
