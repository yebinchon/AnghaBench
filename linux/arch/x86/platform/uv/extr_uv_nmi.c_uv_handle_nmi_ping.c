
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct TYPE_2__ {int pinging; int pings; int queries; } ;


 int NMI_DONE ;
 int local64_inc (int *) ;
 int this_cpu_inc (int ) ;
 int this_cpu_read (int ) ;
 int this_cpu_write (int ,int ) ;
 TYPE_1__ uv_cpu_nmi ;
 int uv_handle_nmi (unsigned int,struct pt_regs*) ;
 int uv_nmi_ping_count ;
 int uv_nmi_ping_misses ;

__attribute__((used)) static int uv_handle_nmi_ping(unsigned int reason, struct pt_regs *regs)
{
 int ret;

 this_cpu_inc(uv_cpu_nmi.queries);
 if (!this_cpu_read(uv_cpu_nmi.pinging)) {
  local64_inc(&uv_nmi_ping_misses);
  return NMI_DONE;
 }

 this_cpu_inc(uv_cpu_nmi.pings);
 local64_inc(&uv_nmi_ping_count);
 ret = uv_handle_nmi(reason, regs);
 this_cpu_write(uv_cpu_nmi.pinging, 0);
 return ret;
}
