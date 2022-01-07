
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpa_data {unsigned long* vaddr; int numpages; int pgd; void* mask_clr; void* mask_set; } ;
typedef int cpa ;
struct TYPE_2__ {int pgd; } ;


 unsigned long PAGE_MASK ;
 scalar_t__ WARN_ONCE (unsigned long,char*,unsigned long) ;
 int _PAGE_ENC ;
 int __change_page_attr_set_clr (struct cpa_data*,int) ;
 void* __pgprot (int ) ;
 int cpa_flush (struct cpa_data*,int) ;
 TYPE_1__ init_mm ;
 int kmap_flush_unused () ;
 int mem_encrypt_active () ;
 int memset (struct cpa_data*,int ,int) ;
 int vm_unmap_aliases () ;

__attribute__((used)) static int __set_memory_enc_dec(unsigned long addr, int numpages, bool enc)
{
 struct cpa_data cpa;
 int ret;


 if (!mem_encrypt_active())
  return 0;


 if (WARN_ONCE(addr & ~PAGE_MASK, "misaligned address: %#lx\n", addr))
  addr &= PAGE_MASK;

 memset(&cpa, 0, sizeof(cpa));
 cpa.vaddr = &addr;
 cpa.numpages = numpages;
 cpa.mask_set = enc ? __pgprot(_PAGE_ENC) : __pgprot(0);
 cpa.mask_clr = enc ? __pgprot(0) : __pgprot(_PAGE_ENC);
 cpa.pgd = init_mm.pgd;


 kmap_flush_unused();
 vm_unmap_aliases();




 cpa_flush(&cpa, 1);

 ret = __change_page_attr_set_clr(&cpa, 1);
 cpa_flush(&cpa, 0);

 return ret;
}
