
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcpu {struct lowcore* lowcore; } ;
struct lowcore {unsigned long restart_fn; unsigned long restart_data; unsigned long restart_source; int nodat_stack; int restart_stack; } ;


 int SIGP_RESTART ;
 int pcpu_sigp_retry (struct pcpu*,int ,int ) ;

__attribute__((used)) static void pcpu_start_fn(struct pcpu *pcpu, void (*func)(void *), void *data)
{
 struct lowcore *lc = pcpu->lowcore;

 lc->restart_stack = lc->nodat_stack;
 lc->restart_fn = (unsigned long) func;
 lc->restart_data = (unsigned long) data;
 lc->restart_source = -1UL;
 pcpu_sigp_retry(pcpu, SIGP_RESTART, 0);
}
