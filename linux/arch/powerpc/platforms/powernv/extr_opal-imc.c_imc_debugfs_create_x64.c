
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
typedef int u64 ;
struct dentry {int dummy; } ;


 struct dentry* debugfs_create_file_unsafe (char const*,int ,struct dentry*,int *,int *) ;
 int fops_imc_x64 ;

__attribute__((used)) static struct dentry *imc_debugfs_create_x64(const char *name, umode_t mode,
          struct dentry *parent, u64 *value)
{
 return debugfs_create_file_unsafe(name, mode, parent,
       value, &fops_imc_x64);
}
