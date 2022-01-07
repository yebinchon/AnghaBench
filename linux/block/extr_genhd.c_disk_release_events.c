
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gendisk {TYPE_1__* ev; } ;
struct TYPE_2__ {int block; } ;


 int WARN_ON_ONCE (int ) ;
 int kfree (TYPE_1__*) ;

__attribute__((used)) static void disk_release_events(struct gendisk *disk)
{

 WARN_ON_ONCE(disk->ev && disk->ev->block != 1);
 kfree(disk->ev);
}
