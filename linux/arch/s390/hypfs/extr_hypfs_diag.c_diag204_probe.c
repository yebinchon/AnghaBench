
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ DIAG204_INFO_EXT ;
 scalar_t__ DIAG204_INFO_SIMPLE ;
 scalar_t__ DIAG204_SUBC_STIB4 ;
 scalar_t__ DIAG204_SUBC_STIB6 ;
 scalar_t__ DIAG204_SUBC_STIB7 ;
 int ENOSYS ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 scalar_t__ diag204 (unsigned long,int,void*) ;
 int diag204_free_buffer () ;
 void* diag204_get_buffer (scalar_t__,int*) ;
 scalar_t__ diag204_info_type ;
 scalar_t__ diag204_store_sc ;

__attribute__((used)) static int diag204_probe(void)
{
 void *buf;
 int pages, rc;

 buf = diag204_get_buffer(DIAG204_INFO_EXT, &pages);
 if (!IS_ERR(buf)) {
  if (diag204((unsigned long)DIAG204_SUBC_STIB7 |
       (unsigned long)DIAG204_INFO_EXT, pages, buf) >= 0) {
   diag204_store_sc = DIAG204_SUBC_STIB7;
   diag204_info_type = DIAG204_INFO_EXT;
   goto out;
  }
  if (diag204((unsigned long)DIAG204_SUBC_STIB6 |
       (unsigned long)DIAG204_INFO_EXT, pages, buf) >= 0) {
   diag204_store_sc = DIAG204_SUBC_STIB6;
   diag204_info_type = DIAG204_INFO_EXT;
   goto out;
  }
  diag204_free_buffer();
 }



 buf = diag204_get_buffer(DIAG204_INFO_SIMPLE, &pages);
 if (IS_ERR(buf)) {
  rc = PTR_ERR(buf);
  goto fail_alloc;
 }
 if (diag204((unsigned long)DIAG204_SUBC_STIB4 |
      (unsigned long)DIAG204_INFO_SIMPLE, pages, buf) >= 0) {
  diag204_store_sc = DIAG204_SUBC_STIB4;
  diag204_info_type = DIAG204_INFO_SIMPLE;
  goto out;
 } else {
  rc = -ENOSYS;
  goto fail_store;
 }
out:
 rc = 0;
fail_store:
 diag204_free_buffer();
fail_alloc:
 return rc;
}
