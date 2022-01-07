
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dbfs_d204_hdr {int dummy; } ;
struct TYPE_2__ {int len; int sc; int version; } ;
struct dbfs_d204 {TYPE_1__ hdr; int buf; } ;


 int DBFS_D204_HDR_VERSION ;
 int ENOMEM ;
 int PAGE_SIZE ;
 int diag204_buf_pages ;
 int diag204_do_store (int ,int) ;
 int diag204_store_sc ;
 struct dbfs_d204* page_align_ptr (void*) ;
 int vfree (void*) ;
 void* vzalloc (int) ;

__attribute__((used)) static int dbfs_d204_create(void **data, void **data_free_ptr, size_t *size)
{
 struct dbfs_d204 *d204;
 int rc, buf_size;
 void *base;

 buf_size = PAGE_SIZE * (diag204_buf_pages + 1) + sizeof(d204->hdr);
 base = vzalloc(buf_size);
 if (!base)
  return -ENOMEM;
 d204 = page_align_ptr(base + sizeof(d204->hdr)) - sizeof(d204->hdr);
 rc = diag204_do_store(d204->buf, diag204_buf_pages);
 if (rc) {
  vfree(base);
  return rc;
 }
 d204->hdr.version = DBFS_D204_HDR_VERSION;
 d204->hdr.len = PAGE_SIZE * diag204_buf_pages;
 d204->hdr.sc = diag204_store_sc;
 *data = d204;
 *data_free_ptr = base;
 *size = d204->hdr.len + sizeof(struct dbfs_d204_hdr);
 return 0;
}
