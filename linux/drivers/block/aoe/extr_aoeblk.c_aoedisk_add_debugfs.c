
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct aoedev {int debugfs; TYPE_1__* gd; } ;
struct TYPE_2__ {char* disk_name; } ;


 int BUG_ON (int) ;
 int * aoe_debugfs_dir ;
 int aoe_debugfs_fops ;
 int debugfs_create_file (char*,int,int *,struct aoedev*,int *) ;
 char* strchr (char*,char) ;

__attribute__((used)) static void
aoedisk_add_debugfs(struct aoedev *d)
{
 char *p;

 if (aoe_debugfs_dir == ((void*)0))
  return;
 p = strchr(d->gd->disk_name, '/');
 if (p == ((void*)0))
  p = d->gd->disk_name;
 else
  p++;
 BUG_ON(*p == '\0');
 d->debugfs = debugfs_create_file(p, 0444, aoe_debugfs_dir, d,
      &aoe_debugfs_fops);
}
