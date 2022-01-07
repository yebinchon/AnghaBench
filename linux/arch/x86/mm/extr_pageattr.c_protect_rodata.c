
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pgprotval_t ;


 int PFN_DOWN (int ) ;
 int _PAGE_RW ;
 int __end_rodata ;
 int __pa_symbol (int ) ;
 int __start_rodata ;
 scalar_t__ kernel_set_to_readonly ;
 scalar_t__ overlaps (unsigned long,unsigned long,unsigned long,unsigned long) ;

__attribute__((used)) static pgprotval_t protect_rodata(unsigned long spfn, unsigned long epfn)
{
 unsigned long epfn_ro, spfn_ro = PFN_DOWN(__pa_symbol(__start_rodata));





 epfn_ro = PFN_DOWN(__pa_symbol(__end_rodata)) - 1;

 if (kernel_set_to_readonly && overlaps(spfn, epfn, spfn_ro, epfn_ro))
  return _PAGE_RW;
 return 0;
}
