
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmi_system_id {int ident; } ;


 int pr_warn (char*,...) ;

__attribute__((used)) static int acer_cpufreq_pst(const struct dmi_system_id *d)
{
 pr_warn("%s laptop with broken PST tables in BIOS detected\n",
  d->ident);
 pr_warn("You need to downgrade to 3A21 (09/09/2002), or try a newer BIOS than 3A71 (01/20/2003)\n");
 pr_warn("cpufreq scaling has been disabled as a result of this\n");
 return 0;
}
