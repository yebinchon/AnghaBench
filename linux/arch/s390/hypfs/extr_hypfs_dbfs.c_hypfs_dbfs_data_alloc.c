
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hypfs_dbfs_file {int dummy; } ;
struct hypfs_dbfs_data {struct hypfs_dbfs_file* dbfs_file; } ;


 int GFP_KERNEL ;
 struct hypfs_dbfs_data* kmalloc (int,int ) ;

__attribute__((used)) static struct hypfs_dbfs_data *hypfs_dbfs_data_alloc(struct hypfs_dbfs_file *f)
{
 struct hypfs_dbfs_data *data;

 data = kmalloc(sizeof(*data), GFP_KERNEL);
 if (!data)
  return ((void*)0);
 data->dbfs_file = f;
 return data;
}
