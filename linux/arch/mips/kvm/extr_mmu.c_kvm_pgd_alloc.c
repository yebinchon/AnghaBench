
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pgd_t ;


 int GFP_KERNEL ;
 int PGD_ORDER ;
 scalar_t__ __get_free_pages (int ,int ) ;
 int kvm_pgd_init (int *) ;

pgd_t *kvm_pgd_alloc(void)
{
 pgd_t *ret;

 ret = (pgd_t *)__get_free_pages(GFP_KERNEL, PGD_ORDER);
 if (ret)
  kvm_pgd_init(ret);

 return ret;
}
