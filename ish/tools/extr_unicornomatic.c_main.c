
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uc_engine ;
struct tlb {int dummy; } ;
struct cpu_state {int mem; } ;
struct TYPE_4__ {struct cpu_state cpu; TYPE_1__* mm; } ;
struct TYPE_3__ {int mem; } ;


 scalar_t__ compare_cpus (struct cpu_state*,struct tlb*,int *,int) ;
 int cpu_step32 (struct cpu_state*,struct tlb*) ;
 TYPE_2__* current ;
 int debugger ;
 int fprintf (int ,char*,char*) ;
 int printk (char*) ;
 int * start_unicorn (struct cpu_state*,int *) ;
 int stderr ;
 int step_tracing (struct cpu_state*,struct tlb*,int *) ;
 char* strerror (int) ;
 int tlb_init (struct tlb*,int ) ;
 int undefined_flags_mask (struct cpu_state*,struct tlb*) ;
 int xX_main_Xx (int,char* const*,int *) ;

int main(int argc, char *const argv[]) {
    int err = xX_main_Xx(argc, argv, ((void*)0));
    if (err < 0) {

        fprintf(stderr, "%s\n", strerror(-err));
        return err;
    }


    uc_engine *uc = start_unicorn(&current->cpu, &current->mm->mem);

    struct cpu_state *cpu = &current->cpu;
    struct tlb tlb;
    tlb_init(&tlb, cpu->mem);
    int undefined_flags = 0;
    struct cpu_state old_cpu = *cpu;
    while (1) {
        while (compare_cpus(cpu, &tlb, uc, undefined_flags) < 0) {
            printk("resetting cpu\n");
            *cpu = old_cpu;
            debugger;
            cpu_step32(cpu, &tlb);
        }
        undefined_flags = undefined_flags_mask(cpu, &tlb);
        old_cpu = *cpu;
        step_tracing(cpu, &tlb, uc);
    }
}
