
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpu_hw_sf {int flags; int qsi; } ;


 int PMC_FAILURE ;


 int PMU_F_RESERVED ;
 int cpu_hw_sf ;
 int deallocate_buffers (struct cpu_hw_sf*) ;
 int debug_sprintf_event (int ,int,char*,struct cpu_hw_sf*) ;
 int memset (struct cpu_hw_sf*,int ,int) ;
 int pr_err (char*,int) ;
 int qsi (int *) ;
 int sf_disable () ;
 int sfdbg ;
 struct cpu_hw_sf* this_cpu_ptr (int *) ;

__attribute__((used)) static void setup_pmc_cpu(void *flags)
{
 int err;
 struct cpu_hw_sf *cpusf = this_cpu_ptr(&cpu_hw_sf);

 err = 0;
 switch (*((int *) flags)) {
 case 129:
  memset(cpusf, 0, sizeof(*cpusf));
  err = qsi(&cpusf->qsi);
  if (err)
   break;
  cpusf->flags |= PMU_F_RESERVED;
  err = sf_disable();
  if (err)
   pr_err("Switching off the sampling facility failed "
          "with rc=%i\n", err);
  debug_sprintf_event(sfdbg, 5,
        "setup_pmc_cpu: initialized: cpuhw=%p\n", cpusf);
  break;
 case 128:
  cpusf->flags &= ~PMU_F_RESERVED;
  err = sf_disable();
  if (err) {
   pr_err("Switching off the sampling facility failed "
          "with rc=%i\n", err);
  } else
   deallocate_buffers(cpusf);
  debug_sprintf_event(sfdbg, 5,
        "setup_pmc_cpu: released: cpuhw=%p\n", cpusf);
  break;
 }
 if (err)
  *((int *) flags) |= PMC_FAILURE;
}
