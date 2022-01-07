
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOSYS ;
 int diag204 (unsigned long,int,void*) ;
 scalar_t__ diag204_info_type ;
 scalar_t__ diag204_store_sc ;

__attribute__((used)) static int diag204_do_store(void *buf, int pages)
{
 int rc;

 rc = diag204((unsigned long) diag204_store_sc |
       (unsigned long) diag204_info_type, pages, buf);
 return rc < 0 ? -ENOSYS : 0;
}
