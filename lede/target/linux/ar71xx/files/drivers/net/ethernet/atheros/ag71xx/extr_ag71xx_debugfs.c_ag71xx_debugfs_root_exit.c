
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * ag71xx_debugfs_root ;
 int debugfs_remove (int *) ;

void ag71xx_debugfs_root_exit(void)
{
 debugfs_remove(ag71xx_debugfs_root);
 ag71xx_debugfs_root = ((void*)0);
}
