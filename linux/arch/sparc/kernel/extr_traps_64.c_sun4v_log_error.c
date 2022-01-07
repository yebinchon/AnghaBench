
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct sun4v_error_entry {int err_attrs; int err_raddr; int err_size; int err_cpu; int err_asi; int err_asr; int err_type; int err_stick; int err_handle; } ;
struct pt_regs {scalar_t__ tpc; } ;
typedef int atomic_t ;


 int SUN4V_ERR_ASR_VALID ;
 int SUN4V_ERR_ATTRS_ASI ;
 int SUN4V_ERR_ATTRS_FPU_REGISTERS ;
 int SUN4V_ERR_ATTRS_INT_REGISTERS ;
 int SUN4V_ERR_ATTRS_MEMORY ;
 int SUN4V_ERR_ATTRS_PIO ;
 int SUN4V_ERR_ATTRS_PRIV_REG ;
 int SUN4V_ERR_ATTRS_PROCESSOR ;
 int atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int pr_cont (char*) ;
 int printk (char*,char const*,int,...) ;
 int show_regs (struct pt_regs*) ;
 int sun4v_emit_err_attr_strings (int) ;
 int sun4v_err_type_to_str (int ) ;
 int sun4v_report_real_raddr (char const*,struct pt_regs*) ;
 int wmb () ;

__attribute__((used)) static void sun4v_log_error(struct pt_regs *regs, struct sun4v_error_entry *ent,
       int cpu, const char *pfx, atomic_t *ocnt)
{
 u64 *raw_ptr = (u64 *) ent;
 u32 attrs;
 int cnt;

 printk("%s: Reporting on cpu %d\n", pfx, cpu);
 printk("%s: TPC [0x%016lx] <%pS>\n",
        pfx, regs->tpc, (void *) regs->tpc);

 printk("%s: RAW [%016llx:%016llx:%016llx:%016llx\n",
        pfx, raw_ptr[0], raw_ptr[1], raw_ptr[2], raw_ptr[3]);
 printk("%s:      %016llx:%016llx:%016llx:%016llx]\n",
        pfx, raw_ptr[4], raw_ptr[5], raw_ptr[6], raw_ptr[7]);

 printk("%s: handle [0x%016llx] stick [0x%016llx]\n",
        pfx, ent->err_handle, ent->err_stick);

 printk("%s: type [%s]\n", pfx, sun4v_err_type_to_str(ent->err_type));

 attrs = ent->err_attrs;
 printk("%s: attrs [0x%08x] < ", pfx, attrs);
 sun4v_emit_err_attr_strings(attrs);
 pr_cont(">\n");




 if (attrs & (SUN4V_ERR_ATTRS_MEMORY |
       SUN4V_ERR_ATTRS_PIO |
       SUN4V_ERR_ATTRS_ASI)) {
  printk("%s: raddr [0x%016llx]\n", pfx, ent->err_raddr);

  if (ent->err_raddr == ~(u64)0)
   sun4v_report_real_raddr(pfx, regs);
 }

 if (attrs & (SUN4V_ERR_ATTRS_MEMORY | SUN4V_ERR_ATTRS_ASI))
  printk("%s: size [0x%x]\n", pfx, ent->err_size);

 if (attrs & (SUN4V_ERR_ATTRS_PROCESSOR |
       SUN4V_ERR_ATTRS_INT_REGISTERS |
       SUN4V_ERR_ATTRS_FPU_REGISTERS |
       SUN4V_ERR_ATTRS_PRIV_REG))
  printk("%s: cpu[%u]\n", pfx, ent->err_cpu);

 if (attrs & SUN4V_ERR_ATTRS_ASI)
  printk("%s: asi [0x%02x]\n", pfx, ent->err_asi);

 if ((attrs & (SUN4V_ERR_ATTRS_INT_REGISTERS |
        SUN4V_ERR_ATTRS_FPU_REGISTERS |
        SUN4V_ERR_ATTRS_PRIV_REG)) &&
     (ent->err_asr & SUN4V_ERR_ASR_VALID) != 0)
  printk("%s: reg [0x%04x]\n",
         pfx, ent->err_asr & ~SUN4V_ERR_ASR_VALID);

 show_regs(regs);

 if ((cnt = atomic_read(ocnt)) != 0) {
  atomic_set(ocnt, 0);
  wmb();
  printk("%s: Queue overflowed %d times.\n",
         pfx, cnt);
 }
}
