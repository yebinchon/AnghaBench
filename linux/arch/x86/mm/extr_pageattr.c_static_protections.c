
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pgprotval_t ;
typedef int pgprot_t ;


 unsigned long PAGE_SIZE ;
 int _PAGE_PRESENT ;
 int __pgprot (int) ;
 int check_conflict (int,int ,int,unsigned long,unsigned long,unsigned long,char*) ;
 int pgprot_val (int ) ;
 int protect_kernel_text (unsigned long,unsigned long) ;
 int protect_kernel_text_ro (unsigned long,unsigned long) ;
 int protect_pci_bios (unsigned long,unsigned long) ;
 int protect_rodata (unsigned long,unsigned long) ;

__attribute__((used)) static inline pgprot_t static_protections(pgprot_t prot, unsigned long start,
       unsigned long pfn, unsigned long npg,
       unsigned long lpsize, int warnlvl)
{
 pgprotval_t forbidden, res;
 unsigned long end;





 if (!(pgprot_val(prot) & _PAGE_PRESENT))
  return prot;


 end = start + npg * PAGE_SIZE - 1;

 res = protect_kernel_text(start, end);
 check_conflict(warnlvl, prot, res, start, end, pfn, "Text NX");
 forbidden = res;







 if (lpsize != (npg * PAGE_SIZE) || (start & (lpsize - 1))) {
  res = protect_kernel_text_ro(start, end);
  check_conflict(warnlvl, prot, res, start, end, pfn, "Text RO");
  forbidden |= res;
 }


 res = protect_pci_bios(pfn, pfn + npg - 1);
 check_conflict(warnlvl, prot, res, start, end, pfn, "PCIBIOS NX");
 forbidden |= res;

 res = protect_rodata(pfn, pfn + npg - 1);
 check_conflict(warnlvl, prot, res, start, end, pfn, "Rodata RO");
 forbidden |= res;

 return __pgprot(pgprot_val(prot) & ~forbidden);
}
