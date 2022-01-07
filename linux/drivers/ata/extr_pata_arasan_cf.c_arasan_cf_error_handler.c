
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_port {TYPE_1__* host; } ;
struct arasan_cf_dev {int dwork; int work; } ;
struct TYPE_2__ {struct arasan_cf_dev* private_data; } ;


 void ata_sff_error_handler (struct ata_port*) ;
 int cancel_delayed_work_sync (int *) ;
 int cancel_work_sync (int *) ;

__attribute__((used)) static void arasan_cf_error_handler(struct ata_port *ap)
{
 struct arasan_cf_dev *acdev = ap->host->private_data;






 cancel_work_sync(&acdev->work);
 cancel_delayed_work_sync(&acdev->dwork);
 return ata_sff_error_handler(ap);
}
