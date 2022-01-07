
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct el_common_EV6_mcheck {int PCTX; int I_CTL; int PAL_BASE; int ISUM; int IER_CM; int EXC_ADDR; int C_STS; int C_STAT; int DC0_SYNDROME; int DC1_SYNDROME; int C_ADDR; int DC_STAT; int MM_STAT; int I_STAT; } ;
struct el_common {int dummy; } ;


 char* KERN_NOTICE ;
 int MCHK_DISPOSITION_DISMISS ;
 int MCHK_DISPOSITION_UNKNOWN_ERROR ;
 char* err_print_prefix ;
 int ev6_parse_cbox (int ,int ,int ,int ,int ,int) ;
 int ev6_parse_ibox (int ,int) ;
 int ev6_parse_mbox (int ,int ,int ,int) ;
 int mchk_dump_logout_frame (struct el_common*) ;
 int printk (char*,char*,...) ;

int
ev6_process_logout_frame(struct el_common *mchk_header, int print)
{
 struct el_common_EV6_mcheck *ev6mchk =
  (struct el_common_EV6_mcheck *)mchk_header;
 int status = MCHK_DISPOSITION_UNKNOWN_ERROR;

 status |= ev6_parse_ibox(ev6mchk->I_STAT, print);
 status |= ev6_parse_mbox(ev6mchk->MM_STAT, ev6mchk->DC_STAT,
     ev6mchk->C_STAT, print);
 status |= ev6_parse_cbox(ev6mchk->C_ADDR, ev6mchk->DC1_SYNDROME,
     ev6mchk->DC0_SYNDROME, ev6mchk->C_STAT,
     ev6mchk->C_STS, print);

 if (!print)
  return status;

 if (status != MCHK_DISPOSITION_DISMISS) {
  char *saved_err_prefix = err_print_prefix;




  printk("%s    EXC_ADDR: 0x%016lx   IER_CM: 0x%016lx"
              "   ISUM: 0x%016lx\n"
           "    PAL_BASE: 0x%016lx   I_CTL:  0x%016lx"
              "   PCTX: 0x%016lx\n",
         err_print_prefix,
         ev6mchk->EXC_ADDR, ev6mchk->IER_CM, ev6mchk->ISUM,
         ev6mchk->PAL_BASE, ev6mchk->I_CTL, ev6mchk->PCTX);

  if (status == MCHK_DISPOSITION_UNKNOWN_ERROR) {
   printk("%s    UNKNOWN error, frame follows:\n",
          err_print_prefix);
  } else {

   err_print_prefix = KERN_NOTICE;
  }

  mchk_dump_logout_frame(mchk_header);

  err_print_prefix = saved_err_prefix;
 }

 return status;
}
