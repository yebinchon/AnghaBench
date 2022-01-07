
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dentry {int dummy; } ;
struct TYPE_6__ {int enabled; int event; int count; int kernel; int user; int unit_mask; } ;
struct TYPE_5__ {int num_counters; } ;
struct TYPE_4__ {int mmcr0; int mmcr1; int mmcra; int cell_support; int enable_kernel; int enable_user; } ;


 TYPE_3__* ctr ;
 TYPE_2__* model ;
 int oprofilefs_create_ulong (struct dentry*,char*,int*) ;
 struct dentry* oprofilefs_mkdir (struct dentry*,char*) ;
 int snprintf (char*,int,char*,int) ;
 TYPE_1__ sys ;

__attribute__((used)) static int op_powerpc_create_files(struct dentry *root)
{
 int i;
 for (i = 0; i < model->num_counters; ++i) {
  struct dentry *dir;
  char buf[4];

  snprintf(buf, sizeof buf, "%d", i);
  dir = oprofilefs_mkdir(root, buf);

  oprofilefs_create_ulong(dir, "enabled", &ctr[i].enabled);
  oprofilefs_create_ulong(dir, "event", &ctr[i].event);
  oprofilefs_create_ulong(dir, "count", &ctr[i].count);
  oprofilefs_create_ulong(dir, "kernel", &ctr[i].kernel);
  oprofilefs_create_ulong(dir, "user", &ctr[i].user);

  oprofilefs_create_ulong(dir, "unit_mask", &ctr[i].unit_mask);
 }

 oprofilefs_create_ulong(root, "enable_kernel", &sys.enable_kernel);
 oprofilefs_create_ulong(root, "enable_user", &sys.enable_user);


 sys.enable_kernel = 1;
 sys.enable_user = 1;

 return 0;
}
