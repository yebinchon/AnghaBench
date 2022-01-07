
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dbfs_dir ;
 int debugfs_create_dir (char*,int *) ;

void hypfs_dbfs_init(void)
{
 dbfs_dir = debugfs_create_dir("s390_hypfs", ((void*)0));
}
