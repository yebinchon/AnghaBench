
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct drbd_device* private; } ;
struct drbd_device {scalar_t__ ed_uuid; } ;


 int seq_printf (struct seq_file*,char*,unsigned long long) ;

__attribute__((used)) static int device_ed_gen_id_show(struct seq_file *m, void *ignored)
{
 struct drbd_device *device = m->private;
 seq_printf(m, "0x%016llX\n", (unsigned long long)device->ed_uuid);
 return 0;
}
