
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct diag2fc_data {int dummy; } ;
struct dbfs_d2fc_hdr {int dummy; } ;
struct TYPE_2__ {unsigned int len; unsigned int count; int reserved; int version; int tod_ext; } ;
struct dbfs_d2fc {TYPE_1__ hdr; } ;


 int DBFS_D2FC_HDR_VERSION ;
 scalar_t__ IS_ERR (struct dbfs_d2fc*) ;
 int PTR_ERR (struct dbfs_d2fc*) ;
 struct dbfs_d2fc* diag2fc_store (int ,unsigned int*,int) ;
 int get_tod_clock_ext (int ) ;
 int guest_query ;
 int memset (int *,int ,int) ;

__attribute__((used)) static int dbfs_diag2fc_create(void **data, void **data_free_ptr, size_t *size)
{
 struct dbfs_d2fc *d2fc;
 unsigned int count;

 d2fc = diag2fc_store(guest_query, &count, sizeof(d2fc->hdr));
 if (IS_ERR(d2fc))
  return PTR_ERR(d2fc);
 get_tod_clock_ext(d2fc->hdr.tod_ext);
 d2fc->hdr.len = count * sizeof(struct diag2fc_data);
 d2fc->hdr.version = DBFS_D2FC_HDR_VERSION;
 d2fc->hdr.count = count;
 memset(&d2fc->hdr.reserved, 0, sizeof(d2fc->hdr.reserved));
 *data = d2fc;
 *data_free_ptr = d2fc;
 *size = d2fc->hdr.len + sizeof(struct dbfs_d2fc_hdr);
 return 0;
}
