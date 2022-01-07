
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pktcdvd_device {int dfs_d_root; int dfs_f_info; int name; } ;


 int debug_fops ;
 int debugfs_create_dir (int ,int ) ;
 int debugfs_create_file (char*,int,int ,struct pktcdvd_device*,int *) ;
 int pkt_debugfs_root ;

__attribute__((used)) static void pkt_debugfs_dev_new(struct pktcdvd_device *pd)
{
 if (!pkt_debugfs_root)
  return;
 pd->dfs_d_root = debugfs_create_dir(pd->name, pkt_debugfs_root);
 if (!pd->dfs_d_root)
  return;

 pd->dfs_f_info = debugfs_create_file("info", 0444,
          pd->dfs_d_root, pd, &debug_fops);
}
