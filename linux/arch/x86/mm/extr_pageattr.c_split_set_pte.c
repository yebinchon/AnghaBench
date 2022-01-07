
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpa_data {int force_static_prot; } ;
typedef int pte_t ;
typedef int pgprot_t ;


 int CPA_PROTECT ;
 unsigned long PAGE_SIZE ;
 unsigned int PFN_DOWN (unsigned long) ;
 int pfn_pte (unsigned long,int ) ;
 scalar_t__ pgprot_val (int ) ;
 int pr_warn_once (char*) ;
 int set_pte (int *,int ) ;
 int static_protections (int ,unsigned long,unsigned long,unsigned int,int ,int ) ;

__attribute__((used)) static void split_set_pte(struct cpa_data *cpa, pte_t *pte, unsigned long pfn,
     pgprot_t ref_prot, unsigned long address,
     unsigned long size)
{
 unsigned int npg = PFN_DOWN(size);
 pgprot_t prot;





 if (!cpa->force_static_prot)
  goto set;


 prot = static_protections(ref_prot, address, pfn, npg, 0, CPA_PROTECT);

 if (pgprot_val(prot) == pgprot_val(ref_prot))
  goto set;
 if (size == PAGE_SIZE)
  ref_prot = prot;
 else
  pr_warn_once("CPA: Cannot fixup static protections for PUD split\n");
set:
 set_pte(pte, pfn_pte(pfn, ref_prot));
}
