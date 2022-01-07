
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int entry; } ;
struct device {TYPE_2__ power; TYPE_1__* bus; } ;
struct TYPE_3__ {char* name; } ;


 int dev_name (struct device*) ;
 int list_move_tail (int *,int *) ;
 int pr_debug (char*,char*,int ,char*,int ) ;

void device_pm_move_before(struct device *deva, struct device *devb)
{
 pr_debug("Moving %s:%s before %s:%s\n",
   deva->bus ? deva->bus->name : "No Bus", dev_name(deva),
   devb->bus ? devb->bus->name : "No Bus", dev_name(devb));

 list_move_tail(&deva->power.entry, &devb->power.entry);
}
