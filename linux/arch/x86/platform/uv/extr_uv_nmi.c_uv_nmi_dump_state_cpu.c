
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct TYPE_4__ {scalar_t__ pid; } ;
struct TYPE_3__ {int state; } ;


 int UV_NMI_STATE_DUMP_DONE ;
 TYPE_2__* current ;
 int pr_info (char*,char const*,int) ;
 int show_regs (struct pt_regs*) ;
 int this_cpu_write (int ,int ) ;
 TYPE_1__ uv_cpu_nmi ;
 scalar_t__ uv_nmi_action_is (char*) ;
 int uv_nmi_dump_cpu_ip (int,struct pt_regs*) ;
 int uv_nmi_dump_cpu_ip_hdr () ;

__attribute__((used)) static void uv_nmi_dump_state_cpu(int cpu, struct pt_regs *regs)
{
 const char *dots = " ................................. ";

 if (cpu == 0)
  uv_nmi_dump_cpu_ip_hdr();

 if (current->pid != 0 || !uv_nmi_action_is("ips"))
  uv_nmi_dump_cpu_ip(cpu, regs);

 if (uv_nmi_action_is("dump")) {
  pr_info("UV:%sNMI process trace for CPU %d\n", dots, cpu);
  show_regs(regs);
 }

 this_cpu_write(uv_cpu_nmi.state, UV_NMI_STATE_DUMP_DONE);
}
