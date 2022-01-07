
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pgprotval_t ;
typedef int pgprot_t ;





 int conflicts (int ,scalar_t__) ;
 int cpa_warn_level ;
 scalar_t__ pgprot_val (int ) ;
 int pr_warn (char*,char const*,char const*,unsigned long,unsigned long,unsigned long,unsigned long long,unsigned long long) ;

__attribute__((used)) static inline void check_conflict(int warnlvl, pgprot_t prot, pgprotval_t val,
      unsigned long start, unsigned long end,
      unsigned long pfn, const char *txt)
{
 static const char *lvltxt[] = {
  [130] = "conflict",
  [128] = "protect",
  [129] = "detect",
 };

 if (warnlvl > cpa_warn_level || !conflicts(prot, val))
  return;

 pr_warn("CPA %8s %10s: 0x%016lx - 0x%016lx PFN %lx req %016llx prevent %016llx\n",
  lvltxt[warnlvl], txt, start, end, pfn, (unsigned long long)pgprot_val(prot),
  (unsigned long long)val);
}
