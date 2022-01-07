
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __be64 ;


 int PNV_IODA_STOPPED_STATE ;
 int ULONG_MAX ;
 int be64_to_cpu (int) ;
 int pr_info (char*,int,...) ;

__attribute__((used)) static void pnv_pci_dump_pest(__be64 pestA[], __be64 pestB[], int pest_size)
{
 __be64 prevA = ULONG_MAX, prevB = ULONG_MAX;
 bool dup = 0;
 int i;

 for (i = 0; i < pest_size; i++) {
  __be64 peA = be64_to_cpu(pestA[i]);
  __be64 peB = be64_to_cpu(pestB[i]);

  if (peA != prevA || peB != prevB) {
   if (dup) {
    pr_info("PE[..%03x] A/B: as above\n", i-1);
    dup = 0;
   }
   prevA = peA;
   prevB = peB;
   if (peA & PNV_IODA_STOPPED_STATE ||
       peB & PNV_IODA_STOPPED_STATE)
    pr_info("PE[%03x] A/B: %016llx %016llx\n",
     i, peA, peB);
  } else if (!dup && (peA & PNV_IODA_STOPPED_STATE ||
        peB & PNV_IODA_STOPPED_STATE)) {
   dup = 1;
  }
 }
}
