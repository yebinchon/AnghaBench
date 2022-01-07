
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_operations {int dummy; } ;
struct dentry {int dummy; } ;



__attribute__((used)) static inline struct dentry *binderfs_create_file(struct dentry *dir,
        const char *name,
        const struct file_operations *fops,
        void *data)
{
 return ((void*)0);
}
