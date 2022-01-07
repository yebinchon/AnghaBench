
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int addr; } ;
struct kvm_s390_sie_block {int ipa; int icptstatus; TYPE_1__ gpsw; } ;
struct vsie_page {struct kvm_s390_sie_block scb_s; } ;


 int __rewind_psw (TYPE_1__,int) ;
 int clear_vsie_icpt (struct vsie_page*) ;
 int insn_length (int) ;

__attribute__((used)) static void retry_vsie_icpt(struct vsie_page *vsie_page)
{
 struct kvm_s390_sie_block *scb_s = &vsie_page->scb_s;
 int ilen = insn_length(scb_s->ipa >> 8);


 if (scb_s->icptstatus & 1) {
  ilen = (scb_s->icptstatus >> 4) & 0x6;
  if (!ilen)
   ilen = 4;
 }
 scb_s->gpsw.addr = __rewind_psw(scb_s->gpsw, ilen);
 clear_vsie_icpt(vsie_page);
}
