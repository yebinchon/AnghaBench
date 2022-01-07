
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int cpacf_mask_t ;
struct TYPE_4__ {int* plo; int dfltcc; int sortl; scalar_t__ kdsa; scalar_t__ kma; scalar_t__ ppno; scalar_t__ pcc; scalar_t__ kmo; scalar_t__ kmf; scalar_t__ kmctr; scalar_t__ pckmo; scalar_t__ klmd; scalar_t__ kimd; scalar_t__ km; scalar_t__ kmc; scalar_t__ kmac; int ptff; } ;
struct TYPE_3__ {scalar_t__ has_kss; scalar_t__ has_ibs; scalar_t__ has_cei; scalar_t__ has_ib; scalar_t__ has_gsls; scalar_t__ has_gpere; scalar_t__ has_siif; scalar_t__ has_64bscao; int has_sief2; } ;


 int CPACF_KDSA ;
 int CPACF_KIMD ;
 int CPACF_KLMD ;
 int CPACF_KM ;
 int CPACF_KMA ;
 int CPACF_KMAC ;
 int CPACF_KMC ;
 int CPACF_KMCTR ;
 int CPACF_KMF ;
 int CPACF_KMO ;
 int CPACF_PCC ;
 int CPACF_PCKMO ;
 int CPACF_PRNO ;
 int INSN_DFLTCC ;
 int INSN_SORTL ;
 int KVM_S390_VM_CPU_FEAT_64BSCAO ;
 int KVM_S390_VM_CPU_FEAT_CEI ;
 int KVM_S390_VM_CPU_FEAT_ESOP ;
 int KVM_S390_VM_CPU_FEAT_GPERE ;
 int KVM_S390_VM_CPU_FEAT_GSLS ;
 int KVM_S390_VM_CPU_FEAT_IB ;
 int KVM_S390_VM_CPU_FEAT_IBS ;
 int KVM_S390_VM_CPU_FEAT_KSS ;
 int KVM_S390_VM_CPU_FEAT_SIEF2 ;
 int KVM_S390_VM_CPU_FEAT_SIIF ;
 scalar_t__ MACHINE_HAS_ESOP ;
 int PTFF_QAF ;
 int __cpacf_query (int ,int *) ;
 int __insn32_query (int ,int ) ;
 int allow_cpu_feat (int ) ;
 TYPE_2__ kvm_s390_available_subfunc ;
 int nested ;
 scalar_t__ plo_test_bit (int) ;
 int ptff (int ,int,int ) ;
 TYPE_1__ sclp ;
 scalar_t__ test_facility (int) ;

__attribute__((used)) static void kvm_s390_cpu_feat_init(void)
{
 int i;

 for (i = 0; i < 256; ++i) {
  if (plo_test_bit(i))
   kvm_s390_available_subfunc.plo[i >> 3] |= 0x80 >> (i & 7);
 }

 if (test_facility(28))
  ptff(kvm_s390_available_subfunc.ptff,
       sizeof(kvm_s390_available_subfunc.ptff),
       PTFF_QAF);

 if (test_facility(17)) {
  __cpacf_query(CPACF_KMAC, (cpacf_mask_t *)
         kvm_s390_available_subfunc.kmac);
  __cpacf_query(CPACF_KMC, (cpacf_mask_t *)
         kvm_s390_available_subfunc.kmc);
  __cpacf_query(CPACF_KM, (cpacf_mask_t *)
         kvm_s390_available_subfunc.km);
  __cpacf_query(CPACF_KIMD, (cpacf_mask_t *)
         kvm_s390_available_subfunc.kimd);
  __cpacf_query(CPACF_KLMD, (cpacf_mask_t *)
         kvm_s390_available_subfunc.klmd);
 }
 if (test_facility(76))
  __cpacf_query(CPACF_PCKMO, (cpacf_mask_t *)
         kvm_s390_available_subfunc.pckmo);
 if (test_facility(77)) {
  __cpacf_query(CPACF_KMCTR, (cpacf_mask_t *)
         kvm_s390_available_subfunc.kmctr);
  __cpacf_query(CPACF_KMF, (cpacf_mask_t *)
         kvm_s390_available_subfunc.kmf);
  __cpacf_query(CPACF_KMO, (cpacf_mask_t *)
         kvm_s390_available_subfunc.kmo);
  __cpacf_query(CPACF_PCC, (cpacf_mask_t *)
         kvm_s390_available_subfunc.pcc);
 }
 if (test_facility(57))
  __cpacf_query(CPACF_PRNO, (cpacf_mask_t *)
         kvm_s390_available_subfunc.ppno);

 if (test_facility(146))
  __cpacf_query(CPACF_KMA, (cpacf_mask_t *)
         kvm_s390_available_subfunc.kma);

 if (test_facility(155))
  __cpacf_query(CPACF_KDSA, (cpacf_mask_t *)
         kvm_s390_available_subfunc.kdsa);

 if (test_facility(150))
  __insn32_query(INSN_SORTL, kvm_s390_available_subfunc.sortl);

 if (test_facility(151))
  __insn32_query(INSN_DFLTCC, kvm_s390_available_subfunc.dfltcc);

 if (MACHINE_HAS_ESOP)
  allow_cpu_feat(KVM_S390_VM_CPU_FEAT_ESOP);




 if (!sclp.has_sief2 || !MACHINE_HAS_ESOP || !sclp.has_64bscao ||
     !test_facility(3) || !nested)
  return;
 allow_cpu_feat(KVM_S390_VM_CPU_FEAT_SIEF2);
 if (sclp.has_64bscao)
  allow_cpu_feat(KVM_S390_VM_CPU_FEAT_64BSCAO);
 if (sclp.has_siif)
  allow_cpu_feat(KVM_S390_VM_CPU_FEAT_SIIF);
 if (sclp.has_gpere)
  allow_cpu_feat(KVM_S390_VM_CPU_FEAT_GPERE);
 if (sclp.has_gsls)
  allow_cpu_feat(KVM_S390_VM_CPU_FEAT_GSLS);
 if (sclp.has_ib)
  allow_cpu_feat(KVM_S390_VM_CPU_FEAT_IB);
 if (sclp.has_cei)
  allow_cpu_feat(KVM_S390_VM_CPU_FEAT_CEI);
 if (sclp.has_ibs)
  allow_cpu_feat(KVM_S390_VM_CPU_FEAT_IBS);
 if (sclp.has_kss)
  allow_cpu_feat(KVM_S390_VM_CPU_FEAT_KSS);
}
