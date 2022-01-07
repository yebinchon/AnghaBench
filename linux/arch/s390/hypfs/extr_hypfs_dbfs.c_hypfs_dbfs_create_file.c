
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hypfs_dbfs_file {int lock; int name; int dentry; } ;


 int dbfs_dir ;
 int dbfs_ops ;
 int debugfs_create_file (int ,int,int ,struct hypfs_dbfs_file*,int *) ;
 int mutex_init (int *) ;

void hypfs_dbfs_create_file(struct hypfs_dbfs_file *df)
{
 df->dentry = debugfs_create_file(df->name, 0400, dbfs_dir, df,
      &dbfs_ops);
 mutex_init(&df->lock);
}
