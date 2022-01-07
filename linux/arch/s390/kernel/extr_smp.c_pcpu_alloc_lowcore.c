
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pcpu {struct lowcore* lowcore; } ;
struct lowcore {unsigned long nodat_stack; unsigned long async_stack; int cpu_nr; int br_r1_trampoline; scalar_t__ spinlock_index; int spinlock_lockval; } ;


 int ENOMEM ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 int LC_ORDER ;
 int S390_lowcore ;
 int SIGP_SET_PREFIX ;
 unsigned long STACK_INIT_OFFSET ;
 int THREAD_SIZE_ORDER ;
 unsigned long __get_free_pages (int,int ) ;
 int arch_spin_lockval (int) ;
 int free_pages (unsigned long,int ) ;
 struct lowcore** lowcore_ptr ;
 int memcpy (struct lowcore*,int *,int) ;
 int memset (char*,int ,int) ;
 scalar_t__ nmi_alloc_per_cpu (struct lowcore*) ;
 int nmi_free_per_cpu (struct lowcore*) ;
 struct pcpu* pcpu_devices ;
 int pcpu_sigp_retry (struct pcpu*,int ,int ) ;
 unsigned long stack_alloc () ;
 int stack_free (unsigned long) ;
 scalar_t__ vdso_alloc_per_cpu (struct lowcore*) ;

__attribute__((used)) static int pcpu_alloc_lowcore(struct pcpu *pcpu, int cpu)
{
 unsigned long async_stack, nodat_stack;
 struct lowcore *lc;

 if (pcpu != &pcpu_devices[0]) {
  pcpu->lowcore = (struct lowcore *)
   __get_free_pages(GFP_KERNEL | GFP_DMA, LC_ORDER);
  nodat_stack = __get_free_pages(GFP_KERNEL, THREAD_SIZE_ORDER);
  if (!pcpu->lowcore || !nodat_stack)
   goto out;
 } else {
  nodat_stack = pcpu->lowcore->nodat_stack - STACK_INIT_OFFSET;
 }
 async_stack = stack_alloc();
 if (!async_stack)
  goto out;
 lc = pcpu->lowcore;
 memcpy(lc, &S390_lowcore, 512);
 memset((char *) lc + 512, 0, sizeof(*lc) - 512);
 lc->async_stack = async_stack + STACK_INIT_OFFSET;
 lc->nodat_stack = nodat_stack + STACK_INIT_OFFSET;
 lc->cpu_nr = cpu;
 lc->spinlock_lockval = arch_spin_lockval(cpu);
 lc->spinlock_index = 0;
 lc->br_r1_trampoline = 0x07f1;
 if (nmi_alloc_per_cpu(lc))
  goto out_async;
 if (vdso_alloc_per_cpu(lc))
  goto out_mcesa;
 lowcore_ptr[cpu] = lc;
 pcpu_sigp_retry(pcpu, SIGP_SET_PREFIX, (u32)(unsigned long) lc);
 return 0;

out_mcesa:
 nmi_free_per_cpu(lc);
out_async:
 stack_free(async_stack);
out:
 if (pcpu != &pcpu_devices[0]) {
  free_pages(nodat_stack, THREAD_SIZE_ORDER);
  free_pages((unsigned long) pcpu->lowcore, LC_ORDER);
 }
 return -ENOMEM;
}
