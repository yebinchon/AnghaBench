
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hd_struct {int dummy; } ;
struct gendisk {int dummy; } ;


 struct hd_struct* __disk_get_part (struct gendisk*,int) ;
 int get_device (int ) ;
 int part_to_dev (struct hd_struct*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

struct hd_struct *disk_get_part(struct gendisk *disk, int partno)
{
 struct hd_struct *part;

 rcu_read_lock();
 part = __disk_get_part(disk, partno);
 if (part)
  get_device(part_to_dev(part));
 rcu_read_unlock();

 return part;
}
