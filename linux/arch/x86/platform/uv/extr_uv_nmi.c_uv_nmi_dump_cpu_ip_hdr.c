
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pr_info (char*,char*,char*,char*,char*) ;

__attribute__((used)) static void uv_nmi_dump_cpu_ip_hdr(void)
{
 pr_info("\nUV: %4s %6s %-32s %s   (Note: PID 0 not listed)\n",
  "CPU", "PID", "COMMAND", "IP");
}
