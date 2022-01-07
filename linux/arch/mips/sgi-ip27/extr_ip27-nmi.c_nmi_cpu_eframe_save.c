
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reg_struct {int sr; int nmi_sr; int cache_err; int badva; int cause; scalar_t__* gpr; scalar_t__ error_epc; scalar_t__ epc; } ;
typedef int nasid_t ;


 int IP27_NMI_KREGS_CPU_SIZE ;
 int IP27_NMI_KREGS_OFFSET ;



 int ST0_ERL ;
 int ST0_EXL ;
 int ST0_IE ;
 int ST0_KSU ;
 int ST0_KX ;
 int ST0_SX ;
 int ST0_UX ;
 int TO_NODE (int ,int ) ;
 scalar_t__ TO_UNCAC (int ) ;
 int pr_cont (char*,...) ;
 int pr_emerg (char*,...) ;
 int print_tainted () ;
 int read_c0_prid () ;

void nmi_cpu_eframe_save(nasid_t nasid, int slice)
{
 struct reg_struct *nr;
 int i;


 nr = (struct reg_struct *)
  (TO_UNCAC(TO_NODE(nasid, IP27_NMI_KREGS_OFFSET)) +
  slice * IP27_NMI_KREGS_CPU_SIZE);

 pr_emerg("NMI nasid %d: slice %d\n", nasid, slice);




 for (i = 0; i < 32; ) {
  if ((i % 4) == 0)
   pr_emerg("$%2d   :", i);
  pr_cont(" %016lx", nr->gpr[i]);

  i++;
  if ((i % 4) == 0)
   pr_cont("\n");
 }

 pr_emerg("Hi    : (value lost)\n");
 pr_emerg("Lo    : (value lost)\n");




 pr_emerg("epc   : %016lx %pS\n", nr->epc, (void *)nr->epc);
 pr_emerg("%s\n", print_tainted());
 pr_emerg("ErrEPC: %016lx %pS\n", nr->error_epc, (void *)nr->error_epc);
 pr_emerg("ra    : %016lx %pS\n", nr->gpr[31], (void *)nr->gpr[31]);
 pr_emerg("Status: %08lx	      ", nr->sr);

 if (nr->sr & ST0_KX)
  pr_cont("KX ");
 if (nr->sr & ST0_SX)
  pr_cont("SX ");
 if (nr->sr & ST0_UX)
  pr_cont("UX ");

 switch (nr->sr & ST0_KSU) {
 case 128:
  pr_cont("USER ");
  break;
 case 129:
  pr_cont("SUPERVISOR ");
  break;
 case 130:
  pr_cont("KERNEL ");
  break;
 default:
  pr_cont("BAD_MODE ");
  break;
 }

 if (nr->sr & ST0_ERL)
  pr_cont("ERL ");
 if (nr->sr & ST0_EXL)
  pr_cont("EXL ");
 if (nr->sr & ST0_IE)
  pr_cont("IE ");
 pr_cont("\n");

 pr_emerg("Cause : %08lx\n", nr->cause);
 pr_emerg("PrId  : %08x\n", read_c0_prid());
 pr_emerg("BadVA : %016lx\n", nr->badva);
 pr_emerg("CErr  : %016lx\n", nr->cache_err);
 pr_emerg("NMI_SR: %016lx\n", nr->nmi_sr);

 pr_emerg("\n");
}
