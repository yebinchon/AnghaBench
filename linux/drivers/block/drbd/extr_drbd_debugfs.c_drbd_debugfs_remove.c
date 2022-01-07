
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int debugfs_remove (struct dentry*) ;

__attribute__((used)) static void drbd_debugfs_remove(struct dentry **dp)
{
 debugfs_remove(*dp);
 *dp = ((void*)0);
}
