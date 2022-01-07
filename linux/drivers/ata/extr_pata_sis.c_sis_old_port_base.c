
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ata_device {int devno; TYPE_2__* link; } ;
struct TYPE_4__ {TYPE_1__* ap; } ;
struct TYPE_3__ {int port_no; } ;



__attribute__((used)) static int sis_old_port_base(struct ata_device *adev)
{
 return 0x40 + (4 * adev->link->ap->port_no) + (2 * adev->devno);
}
