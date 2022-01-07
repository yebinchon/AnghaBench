
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtas_args {int dummy; } ;


 int BUG_ON (int) ;
 scalar_t__ RTAS_UNKNOWN_SERVICE ;
 int hard_smp_processor_id () ;
 int local_irq_disable () ;
 int panic (char*) ;
 int printk (char*,int ,int ) ;
 int rtas_call_unlocked (struct rtas_args*,scalar_t__,int ,int,int *) ;
 scalar_t__ rtas_stop_self_token ;
 int smp_processor_id () ;

__attribute__((used)) static void rtas_stop_self(void)
{
 static struct rtas_args args;

 local_irq_disable();

 BUG_ON(rtas_stop_self_token == RTAS_UNKNOWN_SERVICE);

 printk("cpu %u (hwid %u) Ready to die...\n",
        smp_processor_id(), hard_smp_processor_id());

 rtas_call_unlocked(&args, rtas_stop_self_token, 0, 1, ((void*)0));

 panic("Alas, I survived.\n");
}
