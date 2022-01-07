
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phys_addr_t ;


 int WARN (int,char*,void*,void*) ;
 int __is_lm_address (unsigned long) ;
 int __virt_to_phys_nodebug (unsigned long) ;

phys_addr_t __virt_to_phys(unsigned long x)
{
 WARN(!__is_lm_address(x),
      "virt_to_phys used for non-linear address: %pK (%pS)\n",
       (void *)x,
       (void *)x);

 return __virt_to_phys_nodebug(x);
}
