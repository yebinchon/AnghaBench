
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pd_unit {int capacity; } ;
struct gendisk {struct pd_unit* private_data; } ;


 int pd_identify ;
 scalar_t__ pd_special_command (struct pd_unit*,int ) ;
 int set_capacity (struct gendisk*,int ) ;

__attribute__((used)) static int pd_revalidate(struct gendisk *p)
{
 struct pd_unit *disk = p->private_data;
 if (pd_special_command(disk, pd_identify) == 0)
  set_capacity(p, disk->capacity);
 else
  set_capacity(p, 0);
 return 0;
}
