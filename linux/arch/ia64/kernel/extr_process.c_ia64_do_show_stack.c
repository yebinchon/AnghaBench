
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unw_frame_info {int dummy; } ;


 int printk (char*,...) ;
 int unw_get_bsp (struct unw_frame_info*,unsigned long*) ;
 int unw_get_ip (struct unw_frame_info*,unsigned long*) ;
 int unw_get_sp (struct unw_frame_info*,unsigned long*) ;
 scalar_t__ unw_unwind (struct unw_frame_info*) ;

void
ia64_do_show_stack (struct unw_frame_info *info, void *arg)
{
 unsigned long ip, sp, bsp;

 printk("\nCall Trace:\n");
 do {
  unw_get_ip(info, &ip);
  if (ip == 0)
   break;

  unw_get_sp(info, &sp);
  unw_get_bsp(info, &bsp);
  printk(" [<%016lx>] %pS\n"
    "                                sp=%016lx bsp=%016lx\n",
    ip, (void *)ip, sp, bsp);
 } while (unw_unwind(info) >= 0);
}
