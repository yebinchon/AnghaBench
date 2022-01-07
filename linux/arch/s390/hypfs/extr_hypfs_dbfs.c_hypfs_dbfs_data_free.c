
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hypfs_dbfs_data {int buf_free_ptr; TYPE_1__* dbfs_file; } ;
struct TYPE_2__ {int (* data_free ) (int ) ;} ;


 int kfree (struct hypfs_dbfs_data*) ;
 int stub1 (int ) ;

__attribute__((used)) static void hypfs_dbfs_data_free(struct hypfs_dbfs_data *data)
{
 data->dbfs_file->data_free(data->buf_free_ptr);
 kfree(data);
}
