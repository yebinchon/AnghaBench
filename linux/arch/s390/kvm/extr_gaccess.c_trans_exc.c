
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct trans_exc_code_bits {int b61; int b56; int b60; unsigned long addr; int as; int fsi; } ;
struct kvm_s390_pgm_info {int code; int exc_access_id; int trans_exc_code; } ;
struct TYPE_5__ {TYPE_1__* sie_block; struct kvm_s390_pgm_info pgm; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
typedef enum prot_type { ____Placeholder_prot_type } prot_type ;
typedef enum gacc_mode { ____Placeholder_gacc_mode } gacc_mode ;
struct TYPE_6__ {int as; } ;
struct TYPE_4__ {int gpsw; } ;


 int FSI_FETCH ;
 int FSI_STORE ;
 int GACC_STORE ;
 unsigned long PAGE_SHIFT ;
 int memset (struct kvm_s390_pgm_info*,int ,int) ;
 TYPE_3__ psw_bits (int ) ;

__attribute__((used)) static int trans_exc(struct kvm_vcpu *vcpu, int code, unsigned long gva,
       u8 ar, enum gacc_mode mode, enum prot_type prot)
{
 struct kvm_s390_pgm_info *pgm = &vcpu->arch.pgm;
 struct trans_exc_code_bits *tec;

 memset(pgm, 0, sizeof(*pgm));
 pgm->code = code;
 tec = (struct trans_exc_code_bits *)&pgm->trans_exc_code;

 switch (code) {
 case 137:
  switch (prot) {
  case 130:
   tec->b61 = 1;

  case 128:
   tec->b56 = 1;
   break;
  case 129:
   tec->b60 = 1;
   break;
  case 132:
   tec->b60 = 1;

  case 131:
   tec->b61 = 1;
   break;
  }

 case 142:
 case 138:
 case 136:
 case 135:
 case 134:
 case 133:





  tec->addr = gva >> PAGE_SHIFT;
  tec->fsi = mode == GACC_STORE ? FSI_STORE : FSI_FETCH;
  tec->as = psw_bits(vcpu->arch.sie_block->gpsw).as;

 case 144:
 case 143:
 case 140:
 case 141:
 case 139:





  pgm->exc_access_id = ar;
  break;
 }
 return code;
}
