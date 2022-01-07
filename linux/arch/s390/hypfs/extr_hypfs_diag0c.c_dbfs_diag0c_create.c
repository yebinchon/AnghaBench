
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hypfs_diag0c_hdr {int dummy; } ;
struct hypfs_diag0c_entry {int dummy; } ;
struct TYPE_2__ {unsigned int len; unsigned int count; int version; int tod_ext; } ;
struct hypfs_diag0c_data {TYPE_1__ hdr; } ;


 int DBFS_D0C_HDR_VERSION ;
 scalar_t__ IS_ERR (struct hypfs_diag0c_data*) ;
 int PTR_ERR (struct hypfs_diag0c_data*) ;
 struct hypfs_diag0c_data* diag0c_store (unsigned int*) ;
 int get_tod_clock_ext (int ) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static int dbfs_diag0c_create(void **data, void **data_free_ptr, size_t *size)
{
 struct hypfs_diag0c_data *diag0c_data;
 unsigned int count;

 diag0c_data = diag0c_store(&count);
 if (IS_ERR(diag0c_data))
  return PTR_ERR(diag0c_data);
 memset(&diag0c_data->hdr, 0, sizeof(diag0c_data->hdr));
 get_tod_clock_ext(diag0c_data->hdr.tod_ext);
 diag0c_data->hdr.len = count * sizeof(struct hypfs_diag0c_entry);
 diag0c_data->hdr.version = DBFS_D0C_HDR_VERSION;
 diag0c_data->hdr.count = count;
 *data = diag0c_data;
 *data_free_ptr = diag0c_data;
 *size = diag0c_data->hdr.len + sizeof(struct hypfs_diag0c_hdr);
 return 0;
}
