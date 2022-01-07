
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debugfs_remove (int *) ;
 int * pkt_debugfs_root ;

__attribute__((used)) static void pkt_debugfs_cleanup(void)
{
 debugfs_remove(pkt_debugfs_root);
 pkt_debugfs_root = ((void*)0);
}
