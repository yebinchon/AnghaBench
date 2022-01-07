
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t phys_addr_t ;


 int EINVAL ;
 size_t IMR_MASK ;
 int pr_err (char*,size_t*,size_t) ;

__attribute__((used)) static int imr_check_params(phys_addr_t base, size_t size)
{
 if ((base & IMR_MASK) || (size & IMR_MASK)) {
  pr_err("base %pa size 0x%08zx must align to 1KiB\n",
   &base, size);
  return -EINVAL;
 }
 if (size == 0)
  return -EINVAL;

 return 0;
}
