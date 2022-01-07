
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DIAG304_QUERY_PRP ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 size_t PAGE_SIZE ;
 int free_page (unsigned long) ;
 scalar_t__ get_zeroed_page (int ) ;
 unsigned long hypfs_sprp_diag304 (void*,int ) ;

__attribute__((used)) static int hypfs_sprp_create(void **data_ptr, void **free_ptr, size_t *size)
{
 unsigned long rc;
 void *data;

 data = (void *) get_zeroed_page(GFP_KERNEL);
 if (!data)
  return -ENOMEM;
 rc = hypfs_sprp_diag304(data, DIAG304_QUERY_PRP);
 if (rc != 1) {
  *data_ptr = *free_ptr = ((void*)0);
  *size = 0;
  free_page((unsigned long) data);
  return -EIO;
 }
 *data_ptr = *free_ptr = data;
 *size = PAGE_SIZE;
 return 0;
}
