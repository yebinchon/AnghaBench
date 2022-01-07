
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dentry {int dummy; } ;
typedef int buf ;
struct TYPE_4__ {int extra; int user; int kernel; int unit_mask; int count; int event; int enabled; } ;
struct TYPE_3__ {unsigned int num_virt_counters; } ;


 int avail_to_resrv_perfctr_nmi_bit (int ) ;
 TYPE_2__* counter_config ;
 TYPE_1__* model ;
 int op_x86_virt_to_phys (unsigned int) ;
 int oprofilefs_create_ulong (struct dentry*,char*,int *) ;
 struct dentry* oprofilefs_mkdir (struct dentry*,char*) ;
 int snprintf (char*,int,char*,unsigned int) ;

__attribute__((used)) static int nmi_create_files(struct dentry *root)
{
 unsigned int i;

 for (i = 0; i < model->num_virt_counters; ++i) {
  struct dentry *dir;
  char buf[4];






  if (!avail_to_resrv_perfctr_nmi_bit(op_x86_virt_to_phys(i)))
   continue;

  snprintf(buf, sizeof(buf), "%d", i);
  dir = oprofilefs_mkdir(root, buf);
  oprofilefs_create_ulong(dir, "enabled", &counter_config[i].enabled);
  oprofilefs_create_ulong(dir, "event", &counter_config[i].event);
  oprofilefs_create_ulong(dir, "count", &counter_config[i].count);
  oprofilefs_create_ulong(dir, "unit_mask", &counter_config[i].unit_mask);
  oprofilefs_create_ulong(dir, "kernel", &counter_config[i].kernel);
  oprofilefs_create_ulong(dir, "user", &counter_config[i].user);
  oprofilefs_create_ulong(dir, "extra", &counter_config[i].extra);
 }

 return 0;
}
