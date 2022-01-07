
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pcpu {TYPE_1__* lowcore; } ;
struct TYPE_3__ {unsigned long nodat_stack; unsigned long async_stack; } ;


 int LC_ORDER ;
 int SIGP_SET_PREFIX ;
 unsigned long STACK_INIT_OFFSET ;
 int THREAD_SIZE_ORDER ;
 int free_pages (unsigned long,int ) ;
 int ** lowcore_ptr ;
 int nmi_free_per_cpu (TYPE_1__*) ;
 struct pcpu* pcpu_devices ;
 int pcpu_sigp_retry (struct pcpu*,int ,int ) ;
 int stack_free (unsigned long) ;
 int vdso_free_per_cpu (TYPE_1__*) ;

__attribute__((used)) static void pcpu_free_lowcore(struct pcpu *pcpu)
{
 unsigned long async_stack, nodat_stack, lowcore;

 nodat_stack = pcpu->lowcore->nodat_stack - STACK_INIT_OFFSET;
 async_stack = pcpu->lowcore->async_stack - STACK_INIT_OFFSET;
 lowcore = (unsigned long) pcpu->lowcore;

 pcpu_sigp_retry(pcpu, SIGP_SET_PREFIX, 0);
 lowcore_ptr[pcpu - pcpu_devices] = ((void*)0);
 vdso_free_per_cpu(pcpu->lowcore);
 nmi_free_per_cpu(pcpu->lowcore);
 stack_free(async_stack);
 if (pcpu == &pcpu_devices[0])
  return;
 free_pages(nodat_stack, THREAD_SIZE_ORDER);
 free_pages(lowcore, LC_ORDER);
}
