
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pktcdvd_device {int * dfs_d_root; int * dfs_f_info; } ;


 int debugfs_remove (int *) ;
 int pkt_debugfs_root ;

__attribute__((used)) static void pkt_debugfs_dev_remove(struct pktcdvd_device *pd)
{
 if (!pkt_debugfs_root)
  return;
 debugfs_remove(pd->dfs_f_info);
 debugfs_remove(pd->dfs_d_root);
 pd->dfs_f_info = ((void*)0);
 pd->dfs_d_root = ((void*)0);
}
